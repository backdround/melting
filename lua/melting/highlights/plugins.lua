local c = require("melting.colors")

local plugins = {
  -- Hop
  HopNextKey = { fg = c.match, gui = "bold" },
  HopNextKey1 = { fg = c.red, gui = "bold" },
  HopNextKey2 = { fg = c.gray4 },

  HopUnmatched = { fg = c.gray2, gui = "bold" },
  HopCursor = "Cursor",
  HopPreview = { fg = c.match, gui = "bold" },

  -- Telescope
  TelescopeTitle = "Title",
  TelescopePromptNormal = { fg = c.white },
  TelescopePromptCounter = { fg = c.magenta, gui = "bold" },

  TelescopePromptPrefix = { fg = c.cyan, gui = "bold" },
  TelescopeSelectionCaret = { fg = c.cyan, bg = c.gray1, gui = "bold" },
  TelescopeSelection = { fg = c.white, bg = c.gray1 },
  TelescopeMatching = { fg = c.match, gui = "bold" },
  TelescopeResultsNormal = { fg = c.gray4 },

  TelescopePreviewNormal = "Normal",

  TelescopeBorder = "FloatBorder",
  TelescopePromptBorder = { fg = c.foreground },
  TelescopePreviewBorder = "FloatBorder",
  TelescopeResultsBorder = "FloatBorder",

  -- Cmp
  CmpItemAbbrMatch = { fg = c.match, gui = "bold" },
  CmpItemAbbrMatchFuzzy = { fg = c.red },

  CmpItemAbbr = { fg = c.gray4 },
  CmpItemAbbrDeprecated = { fg = c.gray4, gui = "strikethrough" },

  CmpItemKind = { fg = c.pink },
  CmpItemKindMethod = { fg = c.magenta },

  CmpItemMenu = { fg = c.gray4 },

  -- Lspconfig
  LspInfoTitle = "Title",
  LspInfoBorder = "FloatBorder",
  LspInfoTip = { fg = c.light.green },

  LspInfoList = { fg = c.match },
  LspInfoFiletype = { fg = c.pink, gui = "bold" },
}

return plugins
