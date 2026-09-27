-- Main Hyprland Lua config loader
-- Loads modularized Lua config files from ~/.config/hypr/hyprland/

local home = os.getenv("HOME") or ""
local cfgdir = home .. "/.config/hypr/hyprland/"

-- Load modules (each file returns a table)
local monitors = nil
local styling = nil
local misc = nil
local device = nil
local workspaces = nil
local keybinds = nil
local autostart = nil
local window_rules = nil

local function safe_dofile(path)
  local ok, res = pcall(dofile, path)
  if ok then return res end
  return nil
end

monitors = safe_dofile(cfgdir .. "monitor.lua")
styling = safe_dofile(cfgdir .. "styling.lua")
misc = safe_dofile(cfgdir .. "misc.lua")
device = safe_dofile(cfgdir .. "device.lua")
workspaces = safe_dofile(cfgdir .. "workspaces.lua")
keybinds = safe_dofile(cfgdir .. "keybinds.lua")
autostart = safe_dofile(cfgdir .. "autostart.lua")
window_rules = safe_dofile(cfgdir .. "window_rules.lua")

-- The files above return tables with your configuration.
-- This file returns a table that aggregates them. Adjust to your Hyprland Lua loader expectations.
return {
  monitors = monitors,
  styling = styling,
  misc = misc,
  device = device,
  workspaces = workspaces,
  keybinds = keybinds,
  autostart = autostart,
  window_rules = window_rules,
}
