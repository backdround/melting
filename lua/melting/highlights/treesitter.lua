local c = require("melting.colors")

local treesitter = {
    ["@text.literal"] = "Comment",
    ["@text.reference"] = "Identifier",
    ["@text.title"] = "Title",
    ["@text.uri"] = "Underlined",
    ["@text.underline"] = { gui = "underline", guisp = c.pink },
    ["@text.todo"] = "Todo",

    ["@comment"] = "Comment",
    ["@punctuation"] = "Delimiter",

    ["@constant"] = "Constant",
    ["@constant.builtin"] = "Special",
    ["@constant.macro"] = "Define",
    ["@define"] = "Define",
    ["@macro"] = "Macro",
    ["@string"] = "String",
    ["@string.escape"] = "SpecialChar",
    ["@string.special"] = "SpecialChar",
    ["@character"] = "Character",
    ["@character.special"] = "SpecialChar",
    ["@number"] = "Number",
    ["@boolean"] = "Boolean",
    ["@float"] = "Float",

    ["@function"] = "Function",
    ["@function.builtin"] = "Keyword",
    ["@function.macro"] = "Macro",
    ["@parameter"] = "Identifier",
    ["@method"] = "Function",
    ["@field"] = { fg = c.light.blue },
    ["@property"] = { fg = c.light.blue },
    ["@constructor"] = "Special",

    ["@conditional"] = "Conditional",
    ["@repeat"] = "Repeat",
    ["@label"] = "Label",
    ["@operator"] = "Operator",
    ["@keyword"] = "Keyword",
    ["@exception"] = "Exception",

    ["@variable"] = "Identifier",
    ["@type"] = "Type",
    ["@type.definition"] = "Typedef",
    ["@storageclass"] = "StorageClass",
    ["@structure"] = "Structure",
    ["@namespace"] = "Identifier",
    ["@include"] = "Include",
    ["@preproc"] = "PreProc",
    ["@debug"] = "Debug",
    ["@tag"] = "Tag",
}

return treesitter
