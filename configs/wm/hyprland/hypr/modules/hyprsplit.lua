MAIN_MOD = "SUPER"

local hs = HS

hs.config({ num_workspaces = 10 })

for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(MAIN_MOD .. " + " .. key, hs.dsp.focus({ workspace = i }))
	hl.bind(MAIN_MOD .. "+ SHIFT + " .. key, hs.dsp.window.move({ workspace = i }))
end
