local c = require("melting.colors")

local common = {
  Cursor = { fg = c.red, bg = c.white },
  CursorLine = { bg = c.gray1 },
  ColorColumn = { bg = c.gray1 },
  CursorColumn = { bg = c.gray1 },

  Normal = { fg = c.foreground, bg = c.background },
  EndOfBuffer = { fg = c.gray1 },

  String = { fg = c.light.yellow },


  Title = { fg = c.cyan },
  NonText = { fg = c.light.magenta },
  Todo = { fg = c.cyan, bg = c.gray3 },

  Search = { fg = c.black, bg = c.cyan },
  IncSearch = { fg = c.black, bg = c.light.yellow },

  Visual = { fg = c.white, bg = c.gray2 },
  MatchParen = { fg = c.cyan, bg = c.gray3 },

  FoldColumn = { fg = c.light.magenta, bg = c.black },
  Folded = { fg = c.light.magenta, bg = c.gray3 },

  Pmenu = { fg = c.gray4, bg = c.gray1 },
  PmenuSel = { fg = c.white, bg = c.gray2 },
  PmenuSbar = { bg = c.black },
  PmenuThumb = { bg = c.gray3 },

  SignColumn = { bg = c.black },

  LineNr = { fg = c.gray3, bg = c.black },
  CursorLineNr = { fg = c.gray4, bg = c.black },
  VertSplit = { bg = "#2C2E3A" },

  ErrorMsg = { fg = c.dark.red },
  WarningMsg = { fg = c.dark.yellow },
  Whitespace = { fg = c.light.magenta },

  DiffAdd = { fg = c.dark.green, bg = c.black },
  DiffChange = { fg = c.dark.yellow, bg = c.black },
  DiffDelete = { fg = c.dark.red, bg = c.black },
  DiffText = { fg = c.dark.blue, bg = c.black },

  TabLineFill = { bg = c.gray1 },
  TabLine = { bg = c.gray2, fg = c.foreground },
  TabLineSel = { bg = c.gray3, fg = c.black, gui = "bold,italic" },
  TabLineSelLabel = { bg = c.gray3, fg = c.foreground },

  -- Language commons
  Comment = { fg = c.gray3, gui = "italic" },

  Constant = { fg = c.light.yellow },

  Identifier = { fg = c.light.blue },
  Function = { fg = c.dark.magenta },

  Statement = { fg = c.light.magenta },
  Operator = { fg = c.dark.yellow },

  PreProc = { fg = c.dark.red },

  Type = { fg = c.cyan, gui = "bold" },

  Special = { fg = c.dark.yellow },
  Delimiter = { fg = c.gray4 },

  Underlined = { fg = c.light.red },

  Ignore = { fg = c.gray4 },

  Error = { fg = c.dark.red },
}

return common
