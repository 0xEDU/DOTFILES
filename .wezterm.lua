local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.initial_cols = 86
config.initial_rows = 22

	config.color_scheme = 'Abernathy'
config.font_size = 14

-- config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- background image stuff
-- local wallpaper_path = "/Users/eduardotachotte/Downloads/terminal_wallpaper.jpg"
-- config.window_background_image = wallpaper_path
-- config.window_background_image_hsb = {
--   -- Darken the background image by reducing it to 1/3rd
--   brightness = 0.1,
-- }
config.window_background_opacity = 0.0

return config
