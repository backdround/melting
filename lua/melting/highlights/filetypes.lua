local c = require("melting.colors")

local filetypes = {
  -- Man
  manHeader = { fg = c.pink },
  manSectionHeading = { link = "manHeader" },
  manSubHeading = { link = "manHeader" },

  manOptionDesc = { fg = c.cyan },
  manReference = { fg = c.red },

  manUnderline = { fg = c.magenta, bold = true },
  manBold = { bold = true },
  manItalic = { italic = true },
}

return filetypes
