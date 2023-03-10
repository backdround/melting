local M = {}

M.setup = function(config)
  vim.g.melting_config = config
  vim.cmd.colorscheme("melting")
end

return M
