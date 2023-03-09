# Melting
It's a neovim theme.

### Requirements
- Neovim >= 0.5
- True color support

### Preview
![2023-03-08_22-07](https://user-images.githubusercontent.com/17349169/223813830-badd904d-654a-4b98-8b07-e69158a8644e.png)

### Usage
```lua
-- Load theme
require("melting").setup({})

-- Load theme with custom highlights
require("melting").setup({
  highlights = {
    UserHighlight1 = { fg = "#B4B7C5", bg = "#14171E", gui = "bold,italic" },
    UserHighlight2 = "ErrorMsg",
  },
})
```

### Supported plugins
- TreeSitter
- Lualine
- Telescope
- Hop
- Cmp
- Lspconfig

### Lualine
To use theme for lualine:
```lua
require("lualine").setup {
  options = {
    theme = "melting",
  },
}
```

### Cmp
To use accurate theme for cmp you have to setup:
- `window.completion.winhighlight` to `CursorLine:PmenuSel` .
- `window.documentation.winhighlight` to `` in order to reset default settings.

Possible outcome:
```lua
require("cmp").setup({
  window = {
    completion = {
      winhighlight = "CursorLine:PmenuSel"
    },
    documentation = {
      winhighlight = ""
    },
  },
})
```
You can also append your preferences with `winhighlight` separated by comma.
