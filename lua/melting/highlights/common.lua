local c = require("melting.colors")

local common = {
  -- General
  Normal = { fg = c.foreground, bg = c.background },
  NormalFloat = { fg = c.foreground, bg = c.background },
  Visual = { fg = c.foreground, bg = c.gray1 },

  -- Cursor lines
  Cursor = { fg = c.black, bg = c.foreground },
  CursorLine = { bg = c.gray0 },
  ColorColumn = { bg = c.gray0 },
  CursorColumn = { bg = c.gray0 },

  -- Search and replace
  Search = { fg = c.black, bg = c.dark.blue, gui = "bold" },
  IncSearch = { fg = c.black, bg = c.light.yellow, gui = "bold" },
  Substitute = { fg = c.black, bg = c.dark.blue, gui = "bold" },

  -- Completion
  Pmenu = { fg = c.foreground, bg = c.gray0 },
  PmenuSel = { fg = c.black, bg = c.gray3, gui = "bold" },
  PmenuSbar = { bg = c.gray1 },
  PmenuThumb = { bg = c.gray4 },

  -- Folds
  Folded = { fg = c.dark.yellow, bg = c.gray1 },
  FoldColumn = { fg = c.gray3, bg = c.gray0 },

  -- Window delimiters.
  WinSeparator = { bg = c.gray1, fg = c.foreground },
  LineNr = { fg = c.gray3, bg = c.gray0 },
  CursorLineNr = { fg = c.foreground, bg = c.gray0 },
  SignColumn = { bg = c.gray0 },

  -- Vim builtin features
  ErrorMsg = { fg = c.dark.red },
  WarningMsg = { fg = c.dark.yellow },

  DiffAdd = { fg = c.dark.green, bg = c.black },
  DiffChange = { fg = c.dark.yellow, bg = c.black },
  DiffDelete = { fg = c.dark.red, bg = c.black },
  DiffText = { fg = c.dark.blue, bg = c.black },

  -- Status, bars and tabs
  TabLineFill = { bg = c.gray1 },
  TabLine = { bg = c.gray2, fg = c.foreground },
  TabLineSel = { bg = c.gray3, fg = c.black, gui = "bold,italic" },
  TabLineSelLabel = { bg = c.gray3, fg = c.foreground },

  WinBar = { fg = c.black, bg = c.gray3 },
  WinBarNC = { fg = c.gray4, bg = c.gray1 },

  StatusLine = { fg = c.black, bg = c.gray3 },
  StatusLineNC = { fg = c.gray4, bg = c.gray1 },

  -- Vim ui
  Title = { fg = c.cyan, gui = "bold" },
  MoreMsg = { fg = c.light.green },
  ModeMsg = { gui = "bold" },
  Question = { fg = c.light.green },
  MsgArea = {},
  MsgSeparator = { bg = c.gray1 },
  NonText = { fg = c.light.green },

  -- Ungrouped
  Directory = { fg = c.gray4 },
  EndOfBuffer = { fg = c.gray0 },
  MatchParen = { fg = c.black, bg = c.gray4 },
  SpecialKey = { fg = c.dark.green, gui = "bold,italic" },
  Whitespace = { fg = c.light.red },

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

  Todo = { fg = c.cyan, bg = c.gray1, gui = "bold" },
}

return common
