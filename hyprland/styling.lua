-- Converted from hyprland/styling.conf
return {
  env = {
    { "XCURSOR_SIZE", "24" },
    { "GTK_THEME", "Gruvbox-Dark" },
    { "XCURSOR_THEME", "Bibata-Original-Amber" },
    { "HYPRCURSOR_THEME", "Bibata-Modern-Classic" },
    { "HYPRCURSOR_SIZE", "10" },
  },

  general = {
    gaps_in = 0,
    gaps_out = 0,
    border_size = 2,
    col = {
      active_border = "rgba(d79921ee)",
      inactive_border = "rgba(504945aa)",
    },
    resize_on_border = false,
    allow_tearing = false,
    layout = "dwindle",
  },

  decoration = {
    rounding = 0,
    rounding_power = 0,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    shadow = {
      enabled = false,
      range = 4,
      render_power = 3,
      color = "rgba(282828ee)",
    },
    blur = {
      enabled = false,
      size = 10,
      passes = 3,
      vibrancy = 1,
    },
  },

  animations = {
    enabled = false, -- original had "no, please :)" => set to false
    beziers = {
      { name = "easeOutQuint", params = {0.23,1,0.32,1} },
      { name = "easeInOutCubic", params = {0.65,0.05,0.36,1} },
      { name = "linear", params = {0,0,1,1} },
      { name = "almostLinear", params = {0.5,0.5,0.75,1.0} },
      { name = "quick", params = {0.15,0,0.1,1} },
    },
    animations = {
      { target = "global", a=1, b=10, preset = "default" },
      { target = "border", a=1, b=5.39, preset = "easeOutQuint" },
      { target = "windows", a=1, b=4.79, preset = "easeOutQuint" },
      { target = "windowsIn", a=1, b=4.1, preset = "easeOutQuint", effect = "popin 87%" },
      { target = "windowsOut", a=1, b=1.49, preset = "linear", effect = "popin 87%" },
      { target = "fadeIn", a=1, b=1.73, preset = "almostLinear" },
      { target = "fadeOut", a=1, b=1.46, preset = "almostLinear" },
      { target = "fade", a=1, b=3.03, preset = "quick" },
      { target = "layers", a=1, b=3.81, preset = "easeOutQuint" },
      { target = "layersIn", a=1, b=4, preset = "easeOutQuint", effect = "fade" },
      { target = "layersOut", a=1, b=1.5, preset = "linear", effect = "fade" },
      { target = "fadeLayersIn", a=1, b=1.79, preset = "almostLinear" },
      { target = "fadeLayersOut", a=1, b=1.39, preset = "almostLinear" },
      { target = "workspaces", a=1, b=1.94, preset = "almostLinear", effect = "fade" },
      { target = "workspacesIn", a=1, b=1.21, preset = "almostLinear", effect = "fade" },
      { target = "workspacesOut", a=1, b=1.94, preset = "almostLinear", effect = "fade" },
    },
  },
}
