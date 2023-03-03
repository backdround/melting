if not vim.go.termguicolors then
  print("Sorry theme doesn't work without termguicolors")
  return
end

vim.g.colors_name = "melting"
vim.opt.background = "dark"

vim.cmd("highlight clear")
if vim.g.syntax_on then
  vim.cmd("syntax reset")
end

local function makeHighlight(group, settings)
  local commandTemplate = "highlight %s guifg=%s guibg=%s gui=%s"
  local fg = settings.fg or "none"
  local bg = settings.bg or "none"
  local gui = settings.gui or "none"

  local highlightCommand = string.format(commandTemplate, group, fg, bg, gui)
  vim.api.nvim_command(highlightCommand)
end

local colors = {
  background = "#14171E",
  foreground = "#C6C8D1",
  gray = "#3D4252",

  dark = {
    gray = "#22252F",
    black = "#1B1E25",
    red = "#BF5C80",
    green = "#6AA28C",
    yellow = "#C2BC85",
    blue = "#84A0C6",
    magenta = "#A093C7",
    cyan = "#89B8C2",
    white = "#C6C8D1",
  },

  bright = {
    gray = "#6B7089",
    black = "#1F222A",
    red = "#F2779B",
    green = "#88CEA2",
    yellow = "#DCDE92",
    blue = "#A9BBD5",
    magenta = "#C6B9DB",
    cyan = "#9BE1D0",
    white = "#E1E2E8",
  },
}

local common = {
  Cursor = { fg = colors.bright.black, bg = colors.bright.white },
  CursorLine = { bg = colors.bright.black },
  ColorColumn = { bg = colors.bright.black },
  CursorColumn = { bg = colors.bright.black },

  Normal = { fg = colors.foreground, bg = colors.background },
  Comment = { fg = colors.bright.gray, gui = "italic" },
  Statement = { fg = colors.dark.magenta },
  Function = { fg = colors.dark.magenta },
  Identifier = { fg = colors.bright.blue },
  EndOfBuffer = { fg = colors.dark.gray },

  Type = { fg = colors.bright.cyan },
  Constant = { fg = colors.bright.yellow },
  String = { fg = colors.bright.yellow },
  Operator = { fg = colors.bright.yellow },

  PreProc = { fg = colors.dark.red },
  Include = { fg = colors.dark.red },

  Delimiter = { fg = colors.dark.green },
  Title = { fg = colors.dark.cyan },
  Underlined = { fg = colors.bright.red },
  NonText = { fg = colors.dark.magenta },
  Ignore = { fg = colors.dark.white },
  Todo = { fg = colors.bright.cyan, bg = colors.bright.gray },

  Search = { fg = colors.dark.black, bg = colors.bright.cyan },
  IncSearch = { fg = colors.dark.black, bg = colors.bright.yellow },

  Special = { fg = colors.dark.yellow },
  Visual = { fg = colors.bright.white, bg = colors.gray },
  MatchParen = { fg = colors.bright.cyan, bg = colors.bright.gray },

  FoldColumn = { fg = colors.bright.magenta, bg = colors.dark.black },
  Folded = { fg = colors.bright.magenta, bg = colors.bright.gray },

  Pmenu = { fg = colors.dark.white, bg = colors.dark.gray },
  PmenuSel = { fg = colors.bright.white, bg = colors.gray },
  PmenuSbar = { bg = colors.dark.black },
  PmenuThumb = { bg = colors.bright.gray },

  SignColumn = { bg = colors.dark.black },

  LineNr = { fg = colors.bright.gray, bg = colors.dark.black },
  CursorLineNr = { fg = colors.dark.white, bg = colors.dark.black },
  VertSplit = { bg = "#2C2E3A" },

  Directory = { fg = colors.bright.blue },

  Error = { fg = colors.dark.red },
  ErrorMsg = { fg = colors.dark.red },
  WarningMsg = { fg = colors.dark.yellow },
  Whitespace = { fg = colors.dark.magenta },

  DiffAdd = { fg = colors.dark.green, bg = colors.dark.black },
  DiffChange = { fg = colors.dark.yellow, bg = colors.dark.black },
  DiffDelete = { fg = colors.dark.red, bg = colors.dark.black },
  DiffText = { fg = colors.dark.blue, bg = colors.dark.black },
}

local filetypes = {
  -- Shell scripts
  zshDeref = { fg = colors.dark.red },
  zshSubst = { fg = colors.dark.green },
  zshSubstDelim = { fg = colors.dark.magenta },
  zshVariableDef = { fg = colors.dark.cyan },

  -- Man
  manReference = { fg = colors.bright.red },
  manUnderline = { fg = colors.bright.red },

  manTitle = { fg = colors.dark.yellow },
  manBold = { fg = colors.bright.cyan },

  manOptionDesc = { fg = colors.dark.magenta },
  manSectionHeading = { fg = colors.dark.magenta },
  manSubHeading = { fg = colors.dark.magenta },

  -- Vim help
  helpHyperTextEntry = { fg = colors.bright.red },
  helpSectionDelim = { fg = colors.dark.magenta },

  -- Vim
  vimFunction = { fg = colors.dark.green },
}

for group, settings in pairs(common) do
  makeHighlight(group, settings)
end

for group, settings in pairs(filetypes) do
  makeHighlight(group, settings)
end
