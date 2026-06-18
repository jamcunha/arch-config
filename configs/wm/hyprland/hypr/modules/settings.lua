hl.config({
	general = {
		layout = "dwindle",
	},

	dwindle = {
		force_split = 2,
		preserve_split = true,
	},

	misc = {
		disable_hyprland_logo = true,
		vrr = 1,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		enable_swallow = true,
		swallow_regex = "^(Alacritty|kitty)$",
		middle_click_paste = false,
	},

	xwayland = {
		force_zero_scaling = true,
	},
})
