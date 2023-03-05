local c = require("melting.colors")

local common = {
  Cursor = { fg = c.gray1, bg = c.white },
  CursorLine = { bg = c.gray1 },
  ColorColumn = { bg = c.gray1 },
  CursorColumn = { bg = c.gray1 },

  Normal = { fg = c.foreground, bg = c.background },
  Comment = { fg = c.gray3, gui = "italic" },
  Statement = { fg = c.light.magenta },
  Function = { fg = c.light.magenta },
  Identifier = { fg = c.light.blue },
  EndOfBuffer = { fg = c.gray1 },

  Type = { fg = c.light.cyan },
  Constant = { fg = c.light.yellow },
  String = { fg = c.light.yellow },
  Operator = { fg = c.light.yellow },

  PreProc = { fg = c.dark.red },
  Include = { fg = c.dark.red },

  Delimiter = { fg = c.dark.green },
  Title = { fg = c.dark.cyan },
  Underlined = { fg = c.light.red },
  NonText = { fg = c.light.magenta },
  Ignore = { fg = c.gray4 },
  Todo = { fg = c.light.cyan, bg = c.gray3 },

  Search = { fg = c.black, bg = c.light.cyan },
  IncSearch = { fg = c.black, bg = c.light.yellow },

  Special = { fg = c.dark.yellow },
  Visual = { fg = c.white, bg = c.gray2 },
  MatchParen = { fg = c.light.cyan, bg = c.gray3 },

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

  Directory = { fg = c.light.blue },

  Error = { fg = c.dark.red },
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
}

return common
