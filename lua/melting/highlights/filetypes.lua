local c = require("melting.colors")

local filetypes = {
  -- Man
  manHeader = { fg = c.light.magenta },
  manSectionHeading = "manHeader",
  manSubHeading = "manHeader",

  manOptionDesc = { fg = c.cyan },
  manReference = { fg = c.red },

  manUnderline = { fg = c.dark.magenta, gui = "bold" },
  manBold = { gui = "bold" },
  manItalic = { gui = "italic" },
}

return filetypes
