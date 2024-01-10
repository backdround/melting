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
  if type(settings) ~= "table" then
    local error_template = "Expected table for %s, but got: %s"
    error(string.format(error_template, group, type(settings)))
    return
  end

  vim.api.nvim_set_hl(0, group, settings)
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
