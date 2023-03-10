if not vim.go.termguicolors then
  print("Sorry theme doesn't work without termguicolors")
  return
end

vim.cmd("highlight clear")
if vim.g.syntax_on then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "melting"
vim.opt.background = "dark"

-- Resets all loaded melting packages
for package_path in pairs(package.loaded) do
  if package_path:match("melting.*") then
    package.loaded[package_path] = nil
  end
end

-- Function that real applies highlight to group
local function make_highlight(group, settings)
  if type(settings) ~= "string" and type(settings) ~= "table" then
    local error_template = "Expected string or table for %s, but got: %s"
    error(string.format(error_template, group, type(settings)))
    return
  end

  local command

  -- Gets command string
  if type(settings) == "string" then
    command = string.format("highlight link %s %s", group, settings)
  elseif type(settings) == "table" then
    local cmd_template = "highlight %s guifg=%s guibg=%s gui=%s guisp=%s"
    local fg = settings.fg or "none"
    local bg = settings.bg or "none"
    local gui = settings.gui or "none"
    local guisp = settings.guisp or "none"

    command = string.format(cmd_template, group, fg, bg, gui, guisp)
  end

  vim.api.nvim_command(command)
end

-- Loads all highlights
local highlights = require("melting.highlights")
for group, settings in pairs(highlights) do
  make_highlight(group, settings)
end

-- Gets user config
local config = vim.g.melting_config

-- Loads user highlights
if config and config.highlights then
  for group, settings in pairs(config.highlights) do
    make_highlight(group, settings)
  end
end
