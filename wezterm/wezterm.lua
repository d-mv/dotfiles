local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

local fonts = {
	"MonoLisa",
  "FantasqueSansM Nerd Font",
  -- "Material Icons"
	-- "DankMono Nerd Font",
	-- "Geist Mono",
	-- "SF Mono",
	-- "Monaspace Neon Var",
	-- "Monaspace Xenon Var",
	-- "Monaspace Krypton Var",
	-- "Monaspace Radon Var",
	-- "Monaspace Argon Var",
	-- "Comic Code Ligatures",
	-- "Liga SFMono Nerd Font",
	-- "Fira Code Retina",
	-- "Monego Ligatures",
	-- "Operator Mono Lig",
	-- "Gintronic",
	-- "Cascadia Code",
	-- "JetBrainsMono Nerd Font Mono",
	-- "Victor Mono",
	-- "Inconsolata",
	-- "TempleOS",
	-- "Apercu Pro",
}
local emoji_fonts = { "Apple Color Emoji", "Joypixels", "Twemoji", "Noto Color Emoji", "Noto Emoji" }

config.harfbuzz_features =
	{ "calt", "liga", "zero", "-ss01", "ss02", "-ss03", "ss04", "ss05", "-ss06", "-ss07", "-ss08", "-ss09", "ss10", "ss11", "ss12", "-ss13", "ss14", "ss15", "ss16", "ss17", "ss18" }
config.font = wezterm.font_with_fallback({ fonts[1], emoji_fonts[1], emoji_fonts[2] })
-- config.disable_default_key_bindings = true
config.front_end = "WebGpu"
config.enable_scroll_bar = false
config.scrollback_lines = 102400
config.font_size = 15
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.automatically_reload_config = true
config.default_cursor_style = "BlinkingBar"
config.initial_cols = 80
config.initial_rows = 25
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 30,
	right = 30,
	top = 30,
	bottom = 30,
}
config.window_frame = {
	font = wezterm.font({ family = "Geist Mono" }),
	active_titlebar_bg = "#21262d",
	inactive_titlebar_bg = "#1e1e1e",
	font_size = 14.0,
}

config.color_scheme = "OneDark (base16)"
config.color_scheme = "OneDark"
config.color_schemes = {
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
		background = "#21262d",
		active_tab = {
			bg_color = "#21262d",
			fg_color = "#c8c8c8",
		},
		inactive_tab = {
			bg_color = "#30363d",
			fg_color = "#8b949e",
		},
		inactive_tab_hover = {
			bg_color = "#484f58",
			fg_color = "#b1bac4",
		},
		new_tab = {
			bg_color = "#30363d",
			fg_color = "#8b949e",
		},
		new_tab_hover = {
			bg_color = "#484f58",
			fg_color = "#b1bac4",
		},
	},
}

config.keys = {
  {
    key = 'd',
    mods = 'SHIFT|CMD',
    action = wezterm.action.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },

}

return config

