local c = require("melting.colors")

local common = {
  Cursor = { fg = c.bright.black, bg = c.bright.white },
  CursorLine = { bg = c.bright.black },
  ColorColumn = { bg = c.bright.black },
  CursorColumn = { bg = c.bright.black },

  Normal = { fg = c.foreground, bg = c.background },
  Comment = { fg = c.bright.gray, gui = "italic" },
  Statement = { fg = c.bright.magenta },
  Function = { fg = c.bright.magenta },
  Identifier = { fg = c.bright.blue },
  EndOfBuffer = { fg = c.dark.gray },

  Type = { fg = c.bright.cyan },
  Constant = { fg = c.bright.yellow },
  String = { fg = c.bright.yellow },
  Operator = { fg = c.bright.yellow },

  PreProc = { fg = c.dark.red },
  Include = { fg = c.dark.red },

  Delimiter = { fg = c.dark.green },
  Title = { fg = c.dark.cyan },
  Underlined = { fg = c.bright.red },
  NonText = { fg = c.bright.magenta },
  Ignore = { fg = c.dark.white },
  Todo = { fg = c.bright.cyan, bg = c.bright.gray },

  Search = { fg = c.dark.black, bg = c.bright.cyan },
  IncSearch = { fg = c.dark.black, bg = c.bright.yellow },

  Special = { fg = c.dark.yellow },
  Visual = { fg = c.bright.white, bg = c.gray },
  MatchParen = { fg = c.bright.cyan, bg = c.bright.gray },

  FoldColumn = { fg = c.bright.magenta, bg = c.dark.black },
  Folded = { fg = c.bright.magenta, bg = c.bright.gray },

  Pmenu = { fg = c.dark.white, bg = c.dark.gray },
  PmenuSel = { fg = c.bright.white, bg = c.gray },
  PmenuSbar = { bg = c.dark.black },
  PmenuThumb = { bg = c.bright.gray },

  SignColumn = { bg = c.dark.black },

  LineNr = { fg = c.bright.gray, bg = c.dark.black },
  CursorLineNr = { fg = c.dark.white, bg = c.dark.black },
  VertSplit = { bg = "#2C2E3A" },

  Directory = { fg = c.bright.blue },

  Error = { fg = c.dark.red },
  ErrorMsg = { fg = c.dark.red },
  WarningMsg = { fg = c.dark.yellow },
  Whitespace = { fg = c.bright.magenta },

  DiffAdd = { fg = c.dark.green, bg = c.dark.black },
  DiffChange = { fg = c.dark.yellow, bg = c.dark.black },
  DiffDelete = { fg = c.dark.red, bg = c.dark.black },
  DiffText = { fg = c.dark.blue, bg = c.dark.black },

  TabLineFill = { bg = c.black },
  TabLine = { bg = c.gray, fg = c.foreground },
  TabLineSel = { bg = c.bright.gray, fg = c.dark.black, gui = "bold,italic" },
  TabLineSelLabel = { bg = c.bright.gray, fg = c.foreground },
}

return common
