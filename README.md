# Melting
It's a neovim theme.

### Requirements
- Neovim >= 0.5
- True color support

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
require('lualine').setup {
  options = {
    theme = 'melting',
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
