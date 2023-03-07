local common = require("melting.highlights.common")
local filetypes = require("melting.highlights.filetypes")
local treesitter = require("melting.highlights.treesitter")

local highlights = vim.tbl_extend("force", {}, common, filetypes, treesitter)

return highlights
