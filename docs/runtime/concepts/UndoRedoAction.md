# Concept: UndoRedoAction

## Fields

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `type` | `'built-entity' | 'built-tile' | 'copy-entity-settings' | 'removed-entity' | 'removed-tile' | 'upgraded-entity' | 'upgraded-modules' | 'wire-added' | 'wire-removed' | 'rotated-entity'` | no | The type of action that was undone or redone. |
| `tags` | `Tags` | yes | The tags attached to the undo action, if any. |
