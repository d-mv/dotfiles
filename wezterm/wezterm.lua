local wezterm = require("wezterm")
-- local appearance = require("appearance")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.harfbuzz_features = {
	"calt",
	"liga",
	"zero",
	"cv01 2",
	"cv31 1",
	"ss01",
	"ss02",
	"ss03",
	"ss04",
	"ss05",
	"ss06",
	"ss07",
	"ss08",
	"ss09",
	"ss10",
	"ss11",
	"ss12",
	"ss13",
	"ss14",
	"ss15",
	"ss16",
	"ss17",
	"ss18",
	"cv02",
	"cv10",
	"cv11",
	"cv32",
	"cv62",
}

config.font = wezterm.font_with_fallback({
	-- { family = "Intel One Mono", weight = "Regular" },
	-- { family = "Scientifica", weight = "Regular" },
	-- { family = "Departure Mono", weight = "Regular" },
	-- { family = "Iosevka Fixed Slab", weight = "Regular" },
	-- { family = "Car/tograph CF", weight = "Regular" },
	-- { family = "MonoLisa", weight = "Regular" },
	-- { family = "Berkeley Mono", weight = "Regular" },
	{ family = "FiraCode Nerd Font", weight = "Regular" },
	-- {family = "FantasqueSansM Nerd Font", weight = "Regular"},
	{ family = "Apple Color Emoji" },
})

config.automatically_reload_config = true
config.default_cursor_style = "BlinkingBar"
config.disable_default_key_bindings = true
config.enable_scroll_bar = false
config.enable_tab_bar = true
config.font_size = 16
config.cell_width = 0.95
config.front_end = "WebGpu"
config.hide_tab_bar_if_only_one_tab = false
config.initial_cols = 80
config.initial_rows = 25
-- config.line_height = 1
config.scrollback_lines = 102400
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = true
config.window_decorations = "RESIZE"
config.window_padding = { left = 30, right = 30, top = 30, bottom = 30 }
-- Window frame settings moved to lower section to avoid overwrites

-- if appearance.is_dark() then
-- 	config.color_scheme = "Default Dark (base16)"
-- else
-- 	config.color_scheme = "Default Light (base16)"
-- end

-- config.color_scheme = 'Materia (base16)'
-- config.color_scheme = 'Borland'
-- config.color_scheme = 'kanagawabones'
-- config.color_scheme = 'Everforest Dark (Gogh)'
-- config.color_scheme = 'Everforest Light Soft (Gogh)'
-- config.color_scheme = 'Everforest Light Hard (Gogh)'
-- config.color_scheme = 'Kasugano (terminal.sexy)'
-- config.color_scheme = 'Kanagawa (Gogh)'
-- config.color_scheme = "OneDark (base16)"
-- config.color_scheme = "OneDark"
config.color_scheme = "Orphanage"

config.color_schemes = {
	["Orphanage"] = {
		foreground = "#a1b2bc", -- Light gray for text
		background = "#061a25", -- Dark navy from screenshot bg

		-- Standard ANSI colors
		ansi = {
			"#050f1c",
			"#ff9a00",
			"#00d4aa",
			"#ff9a00", -- Black, orange, teal, yellow
			"#1976d2",
			"#9c27b0",
			"#00bcd4",
			"#ffffff",
		},

		-- Bright ANSI
		brights = {
			"#050f1c",
			"#ff9a00",
			"#20e0b8",
			"#ff9a00",
			"#2196f3",
			"#ba68c8",
			"#00d5ff",
			"#ffffff",
		},

		-- UI elements matching screenshot
		cursor_bg = "#ff9a00", -- Orange cursor
		cursor_fg = "#050f1c",
		cursor_border = "#ff9a00",
		selection_bg = "#1a2a3f", -- Darker blue-gray blend
		selection_fg = "#fff",

		-- Scrollbar
		scrollbar_thumb = "#ff6b35",
	},
	["OneDark"] = {
		foreground = "#f0f6fc",
		-- background = "#1e1e1e",
		background = "#21262d",
		cursor_bg = "#b1cad8",
		cursor_fg = "#21262d",
		cursor_border = "#CF7277",
		selection_fg = "#21262d",
		selection_bg = "#2A4668",
		scrollbar_thumb = "#30363d",
		split = "#6e7681",

		ansi = {
			"#8b949e",
			"#ff7b72",
			"#aff5b4",
			"#FFE08C",
			"#79c0ff",
			"#d2a8ff",
			"#a5d6ff",
			"#c9d1d9",
		},
		brights = {

			"#8b949e",
			"#ff7b72",
			"#aff5b4",
			"#FFE08C",
			"#79c0ff",
			"#d2a8ff",
			"#a5d6ff",
			"#c9d1d9",
		},
	},
}

config.colors = {
	tab_bar = {
		active_tab = { bg_color = "#1f3a45", fg_color = "#fff" },
		inactive_tab = { bg_color = "#061a25", fg_color = "#a1b2bc" },
		inactive_tab_hover = { bg_color = "#061a25", fg_color = "#ffffff" },
	},
}

config.window_frame = {
	font = wezterm.font({ family = "Input Sans" }),
	font_size = 12.0,
	active_titlebar_bg = "#0a0f1f", -- Navy bg
	inactive_titlebar_bg = "#0f1a2f",
	active_titlebar_fg = "#ff6b35", -- Orange text
	inactive_titlebar_fg = "#808080",
	button_fg = "#ff6b35", -- Orange buttons
	button_bg = "#0a0f1f",
	button_hover_fg = "#ffffff",
	button_hover_bg = "#1a2a3f",
}

config.keys = {
	{
		key = "[",
		mods = "SHIFT|CMD",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "]",
		mods = "SHIFT|CMD",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{ key = "v", mods = "CMD", action = wezterm.action.PasteFrom("Clipboard") },
	{ key = "n", mods = "CMD", action = wezterm.action.SpawnWindow },
	{ key = "t", mods = "CMD", action = wezterm.action.SpawnTab("DefaultDomain") },
	{ key = "m", mods = "CMD", action = wezterm.action.Hide },
	{
		key = "d",
		mods = "SHIFT|CMD",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}

-- wezterm.on('update-status', function(window)
--   -- Grab the utf8 character for the "powerline" left facing
--   -- solid arrow.
--   local SOLID_LEFT_ARROW = utf8.char(0xe0b2)

--   -- Grab the current window's configuration, and from it the
--   -- palette (this is the combination of your chosen colour scheme
--   -- including any overrides).
--   local color_scheme = window:effective_config().resolved_palette
--   local bg = color_scheme.background
--   local fg = color_scheme.foreground

--   window:set_right_status(wezterm.format({
--     -- First, we draw the arrow...
--     { Background = { Color = 'none' } },
--     { Foreground = { Color = bg } },
--     { Text = SOLID_LEFT_ARROW },
--     -- Then we draw our text
--     { Background = { Color = bg } },
--     { Foreground = { Color = fg } },
--     { Text = ' ' .. wezterm.hostname() .. ' ' },
--   }))
-- end)

-- Creates a lua table containing the name of every color scheme WezTerm
-- ships with.
-- local scheme_names = {}
-- for name, scheme in pairs(wezterm.color.get_builtin_schemes()) do
--   table.insert(scheme_names, name)
-- end

-- -- When the config for a window is reloaded (i.e. when you save this file
-- -- or open a new window)...
-- wezterm.on('window-config-reloaded', function(window, pane)
--   -- Don't proceed if the config has already been overriden, otherwise
--   -- we'll enter an infinite loop of neverending colour scheme changes.
--   -- If that sounds like your kinda thing, then remove this line ;) - but
--   -- don't say you haven't been warned.
--   if window:get_config_overrides() then return end
--   -- Pick a random colour scheme name.
--   local scheme = scheme_names[math.random(#scheme_names)]
--   -- And log it for good measure
--   wezterm.log_info("Your colour scheme is now: " .. scheme)
--   -- Assign it as an override for this window.
--   window:set_config_overrides { color_scheme = scheme }
-- end)
return config
