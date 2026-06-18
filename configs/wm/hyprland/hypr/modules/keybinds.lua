MAIN_MOD = "SUPER"
KEYBOARD_DEVICE = "rdmctmzt-wireless-2.4g-dongle"

hl.bind(MAIN_MOD .. " + Return", hl.dsp.exec_cmd(PROGRAMS.terminal))
hl.bind(MAIN_MOD .. " + F", hl.dsp.exec_cmd(PROGRAMS.file_manager))
hl.bind(MAIN_MOD .. " + P", hl.dsp.exec_cmd(PROGRAMS.menu))
hl.bind(MAIN_MOD .. " + B", hl.dsp.exec_cmd(PROGRAMS.browser))
hl.bind(MAIN_MOD .. " + SHIFT + B", hl.dsp.exec_cmd(PROGRAMS.incognito_browser))
hl.bind(MAIN_MOD .. " + SHIFT + Q", hl.dsp.exec_cmd("$HOME/.local/share/bin/wlogout.sh"))
hl.bind(MAIN_MOD .. " + SHIFT + S", hl.dsp.exec_cmd(PROGRAMS.screenshot))

hl.bind(MAIN_MOD .. " + SPACE", hl.dsp.exec_cmd("hyprctl switchxkblayout " .. KEYBOARD_DEVICE .. " next"))

hl.bind(MAIN_MOD .. " + SHIFT + C", hl.dsp.window.kill())
hl.bind(MAIN_MOD .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(MAIN_MOD .. " + SHIFT + SPACE", hl.dsp.window.float({ action = "toggle" }))

hl.bind(MAIN_MOD .. " + L", hl.dsp.focus({ direction = "r" }))
hl.bind(MAIN_MOD .. " + H", hl.dsp.focus({ direction = "l" }))
hl.bind(MAIN_MOD .. " + K", hl.dsp.focus({ direction = "u" }))
hl.bind(MAIN_MOD .. " + J", hl.dsp.focus({ direction = "d" }))

hl.bind(MAIN_MOD .. " + SHIFT + L", hl.dsp.window.swap({ direction = "r" }))
hl.bind(MAIN_MOD .. " + SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind(MAIN_MOD .. " + SHIFT + K", hl.dsp.window.swap({ direction = "u" }))
hl.bind(MAIN_MOD .. " + SHIFT + J", hl.dsp.window.swap({ direction = "d" }))

hl.bind(MAIN_MOD .. " + left", hl.dsp.focus({ monitor = "-1" }))
hl.bind(MAIN_MOD .. " + right", hl.dsp.focus({ monitor = "+1" }))

hl.bind(MAIN_MOD .. " + mouse:272", hl.dsp.window.drag())
hl.bind(MAIN_MOD .. " + mouse:273", hl.dsp.window.resize())

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
