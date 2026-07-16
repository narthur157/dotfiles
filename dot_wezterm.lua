local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.keys = {
  -- Paste from clipboard using Ctrl + V
  { key = 'v', mods = 'CTRL', action = wezterm.action.PasteFrom 'Clipboard' },
  
  -- Send Ctrl + V to the terminal (for verbatim input) using Ctrl + Shift + V
  { key = 'v', mods = 'CTRL|SHIFT', action = wezterm.action.SendKey { key = 'v', mods = 'CTRL' } },
}

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.default_prog = { 'powershell.exe', '-NoLogo' }
-- config.enable_tab_bar = false
config.initial_cols = 120
initial_rows = 240

return config
