package.loaded["melting.colors"] = nil
local c = require("melting.colors")

local colors = {
	black = c.dark.black,
	white = c.foreground,

	gray1 = c.black,
	gray2 = c.gray,
	gray3 = c.bright.gray,

	green = c.dark.green,
	magenta = c.dark.magenta,
	red = c.dark.red,
	blue = c.dark.blue,
}

return {
	normal = {
		a = { bg = colors.gray3, fg = colors.black, gui = "bold" },
		b = { bg = colors.gray2, fg = colors.white },
		c = { bg = colors.gray1, fg = colors.gray3 },
	},
	insert = {
		a = { bg = colors.green, fg = colors.black, gui = "bold" },
	},
	visual = {
		a = { bg = colors.magenta, fg = colors.black, gui = "bold" },
	},
	replace = {
		a = { bg = colors.red, fg = colors.black, gui = "bold" },
	},
	command = {
		a = { bg = colors.blue, fg = colors.black, gui = "bold" },
	},
	inactive = {
		a = { bg = colors.gray2, fg = colors.white, gui = "bold" },
	},
}
