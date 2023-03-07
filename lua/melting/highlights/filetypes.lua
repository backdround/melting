local c = require("melting.colors")

local filetypes = {
  -- Man
  manHeader = { fg = c.pink },
  manSectionHeading = "manHeader",
  manSubHeading = "manHeader",

  manOptionDesc = { fg = c.cyan },
  manReference = { fg = c.red },

  manUnderline = { fg = c.magenta, gui = "bold" },
  manBold = { gui = "bold" },
  manItalic = { gui = "italic" },
}

return filetypes
