-- Picture-in-Picture
hl.window_rule({
	match = {
		title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
	},
	keep_aspect_ratio = true,
})

hl.window_rule({
	match = {
		title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
	},
	move = { "monitor_w * 0.73", "monitor_h * 0.72" },
})

hl.window_rule({
	match = {
		title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
	},
	size = { "monitor_w * 0.25", "monitor_h * 0.25" },
})

hl.window_rule({
	match = {
		title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
	},
	pin = true,
})

-- Wlogout Blur
hl.layer_rule({
	match = { namespace = "logout_dialog" },
	blur = true,
})

-- Dialog Windows
hl.window_rule({
	match = {
		title = "^(Open File)(.*)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Select a File)(.*)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Choose wallpaper)(.*)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Open Folder)(.*)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Save As)(.*)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Library)(.*)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "^(File Upload)(.*)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "^(.*)(wants to save)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "^(.*)(wants to open)$",
	},
	center = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "All Files$",
	},
	center = true,
	float = true,
})

-- Ignore maximize requests from apps.
hl.window_rule({
	match = { class = ".*" },
	suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_initial_focus = true,
})
