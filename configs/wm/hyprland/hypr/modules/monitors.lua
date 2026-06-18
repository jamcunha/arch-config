-- TODO: check if HDR support needs to be forced

hl.monitor({
	output = "DP-1",
	mode = "2560x1440@180",
	position = "0x0",
	cm = "auto",
	vrr = 1,
})

hl.monitor({
	output = "DP-2",
	mode = "2560x1440@180",
	position = "2560x0",
	cm = "auto",
	vrr = 1,
})
