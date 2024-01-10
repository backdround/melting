local c = require("melting.colors")

local plugins = {
  -- Hop
  HopNextKey = { fg = c.match, bold = true },
  HopNextKey1 = { fg = c.red, bold = true },
  HopNextKey2 = { fg = c.gray4 },

  HopUnmatched = { fg = c.gray2 },
  HopCursor = { link = "Cursor" },
  HopPreview = { fg = c.match, bold = true },

  -- Telescope
  TelescopeTitle = { link = "Title" },
  TelescopePromptNormal = { fg = c.white },
  TelescopePromptCounter = { fg = c.magenta, bold = true },

  TelescopePromptPrefix = { fg = c.cyan, bold = true },
  TelescopeSelectionCaret = { fg = c.cyan, bg = c.gray1, bold = true },
  TelescopeSelection = { fg = c.white, bg = c.gray1 },
  TelescopeMatching = { fg = c.match, bold = true },
  TelescopeResultsNormal = { fg = c.gray4 },

  TelescopePreviewNormal = { link = "Normal" },

  TelescopeBorder = { link = "FloatBorder" },
  TelescopePromptBorder = { fg = c.foreground },
  TelescopePreviewBorder = { link = "FloatBorder" },
  TelescopeResultsBorder = { link = "FloatBorder" },

  -- Cmp
  CmpItemAbbrMatch = { fg = c.match, bold = true },
  CmpItemAbbrMatchFuzzy = { fg = c.red },

  CmpItemAbbr = { fg = c.gray4 },
  CmpItemAbbrDeprecated = { fg = c.gray4, strikethrough = true },

  CmpItemKind = { fg = c.pink },
  CmpItemKindMethod = { fg = c.magenta },

  CmpItemMenu = { fg = c.gray4 },

  -- Lspconfig
  LspInfoTitle = { link = "Title" },
  LspInfoBorder = { link = "FloatBorder" },
  LspInfoTip = { fg = c.light.green },

  LspInfoList = { fg = c.match },
  LspInfoFiletype = { fg = c.pink, bold = true },

  -- Illuminate
  IlluminatedWordText = { link = "LspReferenceText" },
  IlluminatedWordRead = { link = "LspReferenceRead" },
  IlluminatedWordWrite = { link = "LspReferenceWrite" },

  -- Sj
  SjFocusedLabel = { fg = c.cyan, bold = true },
  SjLabel = { fg = c.match, bold = true },
  SjLimitReached = { fg = c.light.yellow, bold = true },
  SjMatches = { fg = c.pink },
  SjNoMatches = { link = "ErrorMsg" },
  SjOverlay = { fg = c.gray2 },
}

return plugins
