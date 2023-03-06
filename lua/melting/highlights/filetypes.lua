local c = require("melting.colors")

local filetypes = {
  -- Shell scripts
  zshDeref = { fg = c.red },
  zshSubst = { fg = c.dark.green },
  zshSubstDelim = { fg = c.light.magenta },
  zshVariableDef = { fg = c.cyan },

  -- Man
  manReference = { fg = c.light.red },
  manUnderline = { fg = c.light.red },

  manTitle = { fg = c.dark.yellow },
  manBold = { fg = c.cyan },

  manOptionDesc = { fg = c.light.magenta },
  manSectionHeading = { fg = c.light.magenta },
  manSubHeading = { fg = c.light.magenta },

  -- Vim help
  helpHyperTextEntry = { fg = c.light.red },
  helpSectionDelim = { fg = c.light.magenta },

  -- Vim
  vimFunction = { fg = c.dark.green },
}

return filetypes
