hl.config({
	general = {
		border_size = 2,

		gaps_in = 2,
		gaps_out = 5,

		col = {
			inactive_border = COLORS.inactive_border,
			active_border = COLORS.active_border,
		},
	},

	decoration = {
		rounding = 10,
		rounding_power = 2.0,

		active_opacity = 1.0,
		inactive_opacity = 1.0,

		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = COLORS.shadow,
		},
	},
})
