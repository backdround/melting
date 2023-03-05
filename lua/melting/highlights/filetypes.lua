local c = require("melting.colors")

local filetypes = {
  -- Shell scripts
  zshDeref = { fg = c.dark.red },
  zshSubst = { fg = c.dark.green },
  zshSubstDelim = { fg = c.bright.magenta },
  zshVariableDef = { fg = c.dark.cyan },

  -- Man
  manReference = { fg = c.bright.red },
  manUnderline = { fg = c.bright.red },

  manTitle = { fg = c.dark.yellow },
  manBold = { fg = c.bright.cyan },

  manOptionDesc = { fg = c.bright.magenta },
  manSectionHeading = { fg = c.bright.magenta },
  manSubHeading = { fg = c.bright.magenta },

  -- Vim help
  helpHyperTextEntry = { fg = c.bright.red },
  helpSectionDelim = { fg = c.bright.magenta },

  -- Vim
  vimFunction = { fg = c.dark.green },
}

return filetypes
