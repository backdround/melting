local c = require("melting.colors")

local plugins = {
  -- Hop
  HopNextKey = { fg = c.pink, gui = "bold" },
  HopNextKey1 = { fg = c.cyan, gui = "bold" },
  HopNextKey2 = { fg = c.gray3 },

  HopUnmatched = { fg = c.gray2, gui = "bold" },
  HopCursor = "Cursor",
  HopPreview = { fg = c.cyan, gui = "bold" },
}

return plugins
