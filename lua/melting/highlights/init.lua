local common = require("melting.highlights.common")
local filetypes = require("melting.highlights.filetypes")

local highlights = vim.tbl_extend("force", {}, common, filetypes)

return highlights
