local Setting = require "utils.Setting"

local features = Setting.runtime {
  setting_type = "runtime-global",
  name = mod_prefix .. "features",
  type = "string-setting",
  default_value = "---",
  allowed_values = { "---" },
  order="a",
  hidden =true,
}
local experimental = Setting.runtime {
  setting_type = "runtime-global",
  name = mod_prefix .. "experimental",
  type = "string-setting",
  default_value = "---",
  allowed_values = { "---" },
  order="e"
}
local wip = Setting.runtime {
  setting_type = "runtime-global",
  name = mod_prefix .. "wip",
  type = "string-setting",
  default_value = "---",
  allowed_values = { "---" },
  order="w",
}


local experimental = {

  automatic_enable = Setting.runtime {
    type = "bool-setting",
    setting_type = "runtime-global",
    name = mod_prefix .. "automatic_enable",
    default_value = false,
    order="w-a",
    hidden =true,
  },

  elevated_rails_enable = Setting.runtime {
    type = "bool-setting",
    setting_type = "runtime-global",
    name = mod_prefix .. "elevated_rail_enable",
    default_value = false,
    order="w-e",
    hidden =true,
  },

  power_poles_enable = Setting.runtime {
    setting_type = "runtime-global",
    type = "bool-setting",
    name = mod_prefix .. "power_poles_enable",
    default_value = true,
    order="e-p-a"
  },
  power_poles_radius = Setting.runtime {
    setting_type = "runtime-global",
    type = "int-setting",
    name = mod_prefix .. "power_poles_radius",
    default_value = 10,
    minimum_value = 0,
    maximum_value = 64,
    order="e-p-b"
  },

  stations_enable = Setting.runtime {
    setting_type = "runtime-global",
    type = "bool-setting",
    name = mod_prefix .. "stations_enable",
    default_value = true,
    order="e-s"
  },
  
  alerts_enable = Setting.runtime {
    setting_type = "runtime-global",
    type = "bool-setting",
    name = mod_prefix .. "warnings_enable",
    default_value = false,
    order="w-w"
  },

}

return experimental
