#!/usr/bin/env python3
"""
Generate searchable docs from Factorio API JSON files.

Outputs:
  docs/api-index.txt        -- flat one-line-per-item index, grep-friendly
  docs/runtime/             -- per-class/event/concept markdown files
  docs/prototype/           -- per-prototype markdown files
"""

import json
import os
import re
import textwrap

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
DOCS_DIR = SCRIPT_DIR
API_DIR = os.path.join(SCRIPT_DIR, "..", "Factorio-API-Runtime-Docs")
RUNTIME_JSON = os.path.join(API_DIR, "runtime-api.json")
PROTOTYPE_JSON = os.path.join(API_DIR, "prototype-api.json")
INDEX_FILE = os.path.join(DOCS_DIR, "api-index.txt")
RUNTIME_DIR = os.path.join(DOCS_DIR, "runtime")
PROTOTYPE_DIR = os.path.join(DOCS_DIR, "prototype")


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def type_str(t):
    """Flatten a type descriptor to a compact string."""
    if t is None:
        return "?"
    if isinstance(t, str):
        return t
    if isinstance(t, dict):
        ct = t.get("complex_type", "")
        if ct == "array":
            return f"array[{type_str(t.get('value'))}]"
        if ct == "dictionary":
            return f"dict[{type_str(t.get('key'))}, {type_str(t.get('value'))}]"
        if ct == "union":
            opts = t.get("options", [])
            return " | ".join(type_str(o) for o in opts)
        if ct == "literal":
            return repr(t.get("value"))
        if ct == "tuple":
            vals = t.get("values", [])
            return "(" + ", ".join(type_str(v) for v in vals) + ")"
        if ct == "function":
            params = t.get("parameters", [])
            return "function(" + ", ".join(type_str(p) for p in params) + ")"
        if ct == "struct":
            return "struct"
        if ct == "table":
            params = t.get("parameters", [])
            if params:
                fields = ", ".join(
                    f"{p['name']}: {type_str(p.get('type'))}" for p in params
                )
                return "{" + fields + "}"
            return "table"
        # fallback
        return ct or str(t)
    return str(t)


def one_line(text):
    """Collapse description to a single clean line, truncated to 120 chars."""
    if not text:
        return ""
    s = re.sub(r"\s+", " ", text.strip())
    if len(s) > 120:
        s = s[:117] + "..."
    return s


def wrap(text, indent=0, width=100):
    """Word-wrap description text for markdown output."""
    if not text:
        return ""
    prefix = " " * indent
    return textwrap.fill(text.strip(), width=width, initial_indent=prefix,
                         subsequent_indent=prefix)


def write_file(path, content):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)


# ---------------------------------------------------------------------------
# Index line builders
# ---------------------------------------------------------------------------

def index_line(kind, parent, name, tags, desc):
    tag_str = f"[{', '.join(tags)}]" if tags else ""
    desc_str = f" -- {one_line(desc)}" if desc else ""
    if parent:
        return f"{kind} {parent}::{name} {tag_str}{desc_str}"
    return f"{kind} {name} {tag_str}{desc_str}"


# ---------------------------------------------------------------------------
# Runtime markdown generators
# ---------------------------------------------------------------------------

def params_md(params):
    if not params:
        return ""
    lines = ["| Name | Type | Optional | Description |",
             "| ---- | ---- | -------- | ----------- |"]
    for p in sorted(params, key=lambda x: x.get("order", 0)):
        opt = "yes" if p.get("optional") else "no"
        lines.append(
            f"| `{p['name']}` | `{type_str(p.get('type'))}` | {opt} | {one_line(p.get('description', ''))} |"
        )
    return "\n".join(lines)


def method_md(m, class_name):
    params = m.get("parameters", [])
    returns = m.get("return_values", [])
    sig_params = ", ".join(
        ("?" if p.get("optional") else "") + p["name"] + ": " + type_str(p.get("type"))
        for p in sorted(params, key=lambda x: x.get("order", 0))
    )
    if len(returns) == 1:
        ret_sig = " -> " + type_str(returns[0].get("type"))
    elif len(returns) > 1:
        ret_sig = " -> (" + ", ".join(type_str(r.get("type")) for r in returns) + ")"
    else:
        ret_sig = ""

    parts = [f"### `{m['name']}({sig_params}){ret_sig}`\n"]
    if m.get("description"):
        parts.append(wrap(m["description"]) + "\n")
    if params:
        parts.append("**Parameters:**\n")
        parts.append(params_md(params) + "\n")
    if returns:
        parts.append("**Returns:**\n")
        for r in returns:
            desc = one_line(r.get("description", ""))
            parts.append(f"- `{type_str(r.get('type'))}` — {desc}\n")
    return "\n".join(parts)


def attribute_md(a):
    read_t = type_str(a.get("read_type"))
    write_t = type_str(a.get("write_type"))
    if read_t == write_t:
        type_display = f"`{read_t}`"
    elif a.get("write_type"):
        type_display = f"`{read_t}` (read) / `{write_t}` (write)"
    else:
        type_display = f"`{read_t}` (read-only)"
    opt = " *(optional)*" if a.get("optional") else ""
    parts = [f"### `{a['name']}` — {type_display}{opt}\n"]
    if a.get("description"):
        parts.append(wrap(a["description"]) + "\n")
    return "\n".join(parts)


def class_md(cls):
    lines = [f"# {cls['name']}\n"]
    if cls.get("description"):
        lines.append(wrap(cls["description"]) + "\n")

    attrs = sorted(cls.get("attributes", []), key=lambda x: x.get("order", 0))
    methods = sorted(cls.get("methods", []), key=lambda x: x.get("order", 0))
    operators = cls.get("operators", [])

    if attrs:
        lines.append("## Attributes\n")
        for a in attrs:
            lines.append(attribute_md(a))
    if methods:
        lines.append("## Methods\n")
        for m in methods:
            lines.append(method_md(m, cls["name"]))
    if operators:
        lines.append("## Operators\n")
        for op in operators:
            lines.append(f"- `{op.get('name', op.get('operator_type', '?'))}` — {one_line(op.get('description', ''))}\n")

    return "\n".join(lines)


def event_md(e):
    lines = [f"# Event: {e['name']}\n"]
    if e.get("description"):
        lines.append(wrap(e["description"]) + "\n")
    data = e.get("data", [])
    if data:
        lines.append("## Event Data\n")
        lines.append(params_md(data) + "\n")
    if e.get("examples"):
        lines.append("## Examples\n")
        for ex in e["examples"]:
            lines.append("```lua\n" + ex.strip() + "\n```\n")
    return "\n".join(lines)


def concept_md(c):
    lines = [f"# Concept: {c['name']}\n"]
    if c.get("description"):
        lines.append(wrap(c["description"]) + "\n")
    t = c.get("type")
    if isinstance(t, dict):
        ct = t.get("complex_type", "")
        params = t.get("parameters") or t.get("options") or []
        if params and isinstance(params[0], dict) and "name" in params[0]:
            lines.append("## Fields\n")
            lines.append(params_md(params) + "\n")
        elif params:
            lines.append(f"**Type:** `{type_str(t)}`\n")
        else:
            lines.append(f"**Type:** `{type_str(t)}`\n")
    elif t:
        lines.append(f"**Type:** `{type_str(t)}`\n")
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Prototype markdown generators
# ---------------------------------------------------------------------------

def prototype_md(p):
    lines = [f"# {p['name']}"]
    if p.get("typename"):
        lines.append(f"*typename: `{p['typename']}`*")
    if p.get("parent"):
        lines.append(f"*extends: `{p['parent']}`*")
    lines.append("")
    if p.get("description"):
        lines.append(wrap(p["description"]) + "\n")

    props = sorted(p.get("properties", []), key=lambda x: x.get("order", 0))
    if props:
        lines.append("## Properties\n")
        lines.append("| Name | Type | Optional | Description |")
        lines.append("| ---- | ---- | -------- | ----------- |")
        for prop in props:
            opt = "yes" if prop.get("optional") else "no"
            lines.append(
                f"| `{prop['name']}` | `{type_str(prop.get('type'))}` | {opt} | {one_line(prop.get('description', ''))} |"
            )
    return "\n".join(lines) + "\n"


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def generate():
    with open(RUNTIME_JSON, encoding="utf-8") as f:
        runtime = json.load(f)
    with open(PROTOTYPE_JSON, encoding="utf-8") as f:
        proto = json.load(f)

    index_lines = []

    # --- Runtime: classes ---
    for cls in sorted(runtime["classes"], key=lambda x: x["name"]):
        # index
        tags = ["abstract"] if cls.get("abstract") else ["class"]
        index_lines.append(index_line("CLASS", None, cls["name"], tags, cls.get("description", "")))
        for a in cls.get("attributes", []):
            read_t = type_str(a.get("read_type"))
            write_t = type_str(a.get("write_type"))
            t_tag = read_t if read_t == write_t else f"{read_t}/{write_t}"
            atags = [t_tag]
            if not a.get("write_type"):
                atags.append("readonly")
            if a.get("optional"):
                atags.append("optional")
            index_lines.append(index_line("ATTR", cls["name"], a["name"], atags, a.get("description", "")))
        for m in cls.get("methods", []):
            params = m.get("parameters", [])
            p_str = ", ".join(p["name"] for p in sorted(params, key=lambda x: x.get("order", 0)))
            index_lines.append(index_line("METHOD", cls["name"], f"{m['name']}({p_str})", [], m.get("description", "")))
        # markdown
        write_file(os.path.join(RUNTIME_DIR, "classes", f"{cls['name']}.md"), class_md(cls))

    # --- Runtime: events ---
    for e in sorted(runtime["events"], key=lambda x: x["name"]):
        index_lines.append(index_line("EVENT", None, e["name"], [], e.get("description", "")))
        write_file(os.path.join(RUNTIME_DIR, "events", f"{e['name']}.md"), event_md(e))

    # --- Runtime: concepts ---
    for c in sorted(runtime["concepts"], key=lambda x: x["name"]):
        index_lines.append(index_line("CONCEPT", None, c["name"], [], c.get("description", "")))
        write_file(os.path.join(RUNTIME_DIR, "concepts", f"{c['name']}.md"), concept_md(c))

    # --- Runtime: defines ---
    for define in sorted(runtime.get("defines", []), key=lambda x: x["name"]):
        index_lines.append(index_line("DEFINE", None, define["name"], [], define.get("description", "")))
        for v in define.get("values", []):
            index_lines.append(index_line("DEFINE", define["name"], v["name"], [], v.get("description", "")))

    # --- Runtime: global functions ---
    for fn in sorted(runtime.get("global_functions", []), key=lambda x: x["name"]):
        params = fn.get("parameters", [])
        p_str = ", ".join(p["name"] for p in sorted(params, key=lambda x: x.get("order", 0)))
        index_lines.append(index_line("GLOBAL_FN", None, f"{fn['name']}({p_str})", [], fn.get("description", "")))

    # --- Prototype: prototypes ---
    for p in sorted(proto["prototypes"], key=lambda x: x["name"]):
        tags = ["abstract"] if p.get("abstract") else []
        if p.get("typename"):
            tags.append(f"type={p['typename']}")
        if p.get("parent"):
            tags.append(f"extends={p['parent']}")
        index_lines.append(index_line("PROTOTYPE", None, p["name"], tags, p.get("description", "")))
        for prop in p.get("properties", []):
            ptags = [type_str(prop.get("type"))]
            if prop.get("optional"):
                ptags.append("optional")
            index_lines.append(index_line("PROTO_PROP", p["name"], prop["name"], ptags, prop.get("description", "")))
        write_file(os.path.join(PROTOTYPE_DIR, f"{p['name']}.md"), prototype_md(p))

    # --- Prototype: types ---
    for t in sorted(proto.get("types", []), key=lambda x: x["name"]):
        index_lines.append(index_line("PROTO_TYPE", None, t["name"], [], t.get("description", "")))

    # --- Write index ---
    index_lines.sort()
    with open(INDEX_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(index_lines) + "\n")

    print(f"Generated {len(index_lines)} index entries -> {INDEX_FILE}")
    print(f"Runtime markdown -> {RUNTIME_DIR}/")
    print(f"Prototype markdown -> {PROTOTYPE_DIR}/")


if __name__ == "__main__":
    generate()
