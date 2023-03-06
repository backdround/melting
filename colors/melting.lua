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

-- Resets all loaded melting packages
for packagePath in pairs(package.loaded) do
  if packagePath:match("melting.*") then
    package.loaded[packagePath] = nil
  end
end

-- Function that real applies highlight to group
local function makeHighlight(group, settings)
  local cmdTemplate = "highlight %s guifg=%s guibg=%s gui=%s guisp=%s"
  local fg = settings.fg or "none"
  local bg = settings.bg or "none"
  local gui = settings.gui or "none"
  local guisp = settings.guisp or "none"

  local highlightCommand = string.format(cmdTemplate, group, fg, bg, gui, guisp)
  vim.api.nvim_command(highlightCommand)
end

-- Loads all highlights
local highlights = require("melting.highlights")
for group, settings in pairs(highlights) do
  makeHighlight(group, settings)
end
