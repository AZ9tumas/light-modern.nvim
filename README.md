# light-modern.nvim

A Neovim port of Visual Studio Code's default **Light Modern** theme.

Colours are transcribed from VS Code's built-in `theme-defaults` extension —
`light_modern.json` layered over `light_plus.json` and `light_vs.json` — so
comments are green (`#008000`), keywords blue (`#0000ff`), control flow purple
(`#af00db`), strings dark red (`#a31515`), functions olive (`#795e26`), types
teal (`#267f99`), variables navy (`#001080`), and the UI accent is the familiar
`#005fb8` blue.

Requires Neovim >= 0.8 with `termguicolors`.

## Install (lazy.nvim)

```lua
{
  "your-github-username/light-modern.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("light-modern").setup(opts)
    vim.cmd.colorscheme("light-modern")
  end,
}
```

Using LazyVim? Set it as the colorscheme instead of calling `vim.cmd`:

```lua
{
  { "your-github-username/light-modern.nvim", lazy = false, priority = 1000, opts = {} },
  { "LazyVim/LazyVim", opts = { colorscheme = "light-modern" } },
}
```

Running it straight from a local checkout (no repo needed):

```lua
{
  dir = vim.fn.expand("~/Desktop/light-modern.nvim"),
  name = "light-modern",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("light-modern").setup(opts)
    vim.cmd.colorscheme("light-modern")
  end,
}
```

Other managers:

```lua
-- packer.nvim
use({ "your-github-username/light-modern.nvim" })

-- vim-plug
Plug 'your-github-username/light-modern.nvim'
```

```vim
" then, in any manager
colorscheme light-modern
```

## Configuration

`setup()` is optional — every value below is the default.

```lua
require("light-modern").setup({
  transparent = false,      -- drop the editor background
  terminal_colors = true,   -- recolour :terminal with VS Code's ANSI palette
  dim_inactive = false,     -- grey chrome background on unfocused splits
  ending_tildes = false,    -- show `~` past the end of the buffer
  cursorline = true,        -- subtle fill on the cursor line

  styles = {
    comments     = { italic = true },
    keywords     = {},
    conditionals = {},
    functions    = {},
    variables    = {},
    types        = {},
    strings      = {},
    numbers      = {},
    booleans     = {},
    parameters   = {},
    properties   = {},
    operators    = {},
  },

  diagnostics = {
    undercurl = true,       -- undercurl instead of underline
    background = true,      -- tinted background behind virtual text
  },

  -- filetypes that get the panel background instead of the editor background
  sidebars = { "NvimTree", "neo-tree", "help", "qf", "lazy", "mason", "trouble" },

  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
})
```

Any style table accepts the attributes `nvim_set_hl` understands — `italic`,
`bold`, `underline`, `undercurl`, `strikethrough`, `reverse`, `nocombine`.

### Overriding colours and highlights

```lua
require("light-modern").setup({
  on_colors = function(colors)
    colors.comment = "#6a9955"  -- use the Dark Modern comment green instead
  end,
  on_highlights = function(hl, colors)
    hl.CursorLine = { bg = "#f0f0f0" }
    hl["@keyword.return"] = { fg = colors.control, bold = true }
  end,
})
```

The palette is also available directly:

```lua
local colors = require("light-modern").colors()
```

## lualine

```lua
require("lualine").setup({
  options = { theme = "light-modern" },
})
```

## What's covered

* Core editor UI, statusline, tabline, popup menu, diffs, spelling, folds
* Legacy `:syntax` groups and the full tree-sitter capture set, including
  language tweaks (JSON/YAML keys, HTML attribute values, CSS, Python builtins)
* LSP diagnostics, references, inlay hints, and semantic tokens
* gitsigns, telescope, fzf-lua, nvim-tree, neo-tree, oil, nvim-cmp, blink.cmp,
  bufferline, indent-blankline, which-key, noice, nvim-notify, snacks, trouble,
  todo-comments, lazy, mason, dap/dap-ui, flash, leap, hop, mini.nvim, alpha,
  dashboard, treesitter-context, rainbow-delimiters, navic, aerial, scrollbar,
  harpoon, diffview, neogit, copilot, render-markdown

## Layout

```
light-modern.nvim
├── colors/light-modern.lua           entry point for :colorscheme
├── lua/light-modern/
│   ├── init.lua                      setup() / load() / colors()
│   ├── config.lua                    defaults
│   ├── palette.lua                   the colours, annotated with VS Code keys
│   ├── theme.lua                     builds and applies the highlight table
│   ├── util.lua                      blend / darken / lighten helpers
│   └── groups/
│       ├── editor.lua
│       ├── syntax.lua
│       ├── treesitter.lua
│       ├── lsp.lua
│       └── plugins.lua
└── lua/lualine/themes/light-modern.lua
```

## Licence

MIT. Colour values originate from Microsoft's VS Code default themes, which are
MIT licensed.
