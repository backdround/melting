local c = require("melting.colors")

local plugins = {
  -- Hop
  HopNextKey = { fg = c.pink, gui = "bold" },
  HopNextKey1 = { fg = c.cyan, gui = "bold" },
  HopNextKey2 = { fg = c.gray3 },

  HopUnmatched = { fg = c.gray2, gui = "bold" },
  HopCursor = "Cursor",
  HopPreview = { fg = c.cyan, gui = "bold" },

  -- Telescope
  TelescopeTitle = "Title",
  TelescopePromptNormal = { fg = c.white },
  TelescopePromptCounter = { fg = c.magenta, gui = "bold" },

  TelescopePromptPrefix = { fg = c.cyan, bg = c.gray1, gui = "bold" },
  TelescopeSelectionCaret = "TelescopePromptPrefix",
  TelescopeSelection = { fg = c.white, bg = c.gray1 },
  TelescopeMatching = { fg = c.error, gui = "bold" },
  TelescopeResultsNormal = { fg = c.gray4 },

  TelescopePreviewNormal = "Normal",

  TelescopeBorder = "FloatBorder",
  TelescopePromptBorder = { fg = c.foreground },
  TelescopePreviewBorder = "FloatBorder",
  TelescopeResultsBorder = "FloatBorder",

}

return plugins
