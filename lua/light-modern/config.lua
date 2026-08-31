local M = {}

M.defaults = {
  --- Drop the editor background so the terminal shows through.
  transparent = false,
  --- Recolour `:terminal` with the VS Code ANSI palette.
  terminal_colors = true,
  --- Give unfocused splits the slightly grey chrome background.
  dim_inactive = false,
  --- Show `~` past the end of the buffer.
  ending_tildes = false,
  --- Paint a subtle fill on the cursor line (VS Code draws a border instead).
  cursorline = true,
  --- Per-token style overrides, e.g. `comments = { italic = false }`.
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
    --- Undercurl instead of underline on diagnostic ranges.
    undercurl = true,
    --- Tinted background behind virtual text.
    background = true,
  },
  --- Filetypes that get the panel background instead of the editor background.
  sidebars = {
    "NvimTree",
    "neo-tree",
    "aerial",
    "Outline",
    "help",
    "qf",
    "lazy",
    "mason",
    "trouble",
    "Trouble",
    "dapui_scopes",
    "dapui_breakpoints",
    "dapui_stacks",
    "dapui_watches",
    "spectre_panel",
    "startuptime",
  },
  --- Called with the palette before highlights are built.
  ---@type fun(colors: table)|nil
  on_colors = nil,
  --- Called with the full highlight table just before it is applied.
  ---@type fun(highlights: table, colors: table)|nil
  on_highlights = nil,
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
  return M.options
end

function M.extend(opts)
  M.options = vim.tbl_deep_extend("force", M.options, opts or {})
  return M.options
end

return M
