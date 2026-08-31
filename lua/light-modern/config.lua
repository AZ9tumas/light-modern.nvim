local M = {}

M.defaults = {
  style = "light",
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
  ending_tildes = false,
  cursorline = true,
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
    undercurl = true,
    background = true,
  },
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
  ---@type fun(colors: table)|nil
  on_colors = nil,
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
