local exists, colors = pcall(require, "colors.tokyonight")

if not exists then
	print("colorscheme does not exist")
	return
end

COLORS = colors
PROGRAMS = require("modules.programs")

HS = require("hyprsplit")

require("modules.monitors")
require("modules.autostart")
require("modules.environment")
require("modules.decorations")
require("modules.animations")
require("modules.input")
require("modules.settings")
require("modules.keybinds")
require("modules.window_rules")

require("modules.hyprsplit")
