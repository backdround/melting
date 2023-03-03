local c = require("melting.colors")

local filetypes = {
  -- Shell scripts
  zshDeref = { fg = c.dark.red },
  zshSubst = { fg = c.dark.green },
  zshSubstDelim = { fg = c.dark.magenta },
  zshVariableDef = { fg = c.dark.cyan },

  -- Man
  manReference = { fg = c.bright.red },
  manUnderline = { fg = c.bright.red },

  manTitle = { fg = c.dark.yellow },
  manBold = { fg = c.bright.cyan },

  manOptionDesc = { fg = c.dark.magenta },
  manSectionHeading = { fg = c.dark.magenta },
  manSubHeading = { fg = c.dark.magenta },

  -- Vim help
  helpHyperTextEntry = { fg = c.bright.red },
  helpSectionDelim = { fg = c.dark.magenta },

  -- Vim
  vimFunction = { fg = c.dark.green },
}

return filetypes
