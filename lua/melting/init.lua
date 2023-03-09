local M = {}

M.setup = function(config)
	vim.g.meltingConfig = config
	vim.cmd.colorscheme("melting")
end

return M
