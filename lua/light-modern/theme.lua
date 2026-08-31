local config = require("light-modern.config")
local palette = require("light-modern.palette")
local util = require("light-modern.util")

local M = {}

local MODULES = { "editor", "syntax", "treesitter", "lsp", "plugins" }

---@param style string|nil "light" or "dark"; defaults to the configured style
---@return table
function M.colors(style)
  local opts = config.options
  style = palette.styles[style or opts.style] and (style or opts.style) or "light"
  local c = vim.deepcopy(palette.styles[style])
  if type(opts.on_colors) == "function" then
    opts.on_colors(c)
  end
  return c
end

---@param c table|nil resolved palette
---@return table, table highlights, colors
function M.highlights(c)
  c = c or M.colors()
  local opts = config.options
  local hl = {}

  for _, module in ipairs(MODULES) do
    for group, spec in pairs(require("light-modern.groups." .. module).get(c, opts)) do
      hl[group] = spec
    end
  end

  if type(opts.on_highlights) == "function" then
    opts.on_highlights(hl, c)
  end

  return hl, c
end

local function setup_sidebars(opts)
  local group = vim.api.nvim_create_augroup("LightModernSidebars", { clear = true })
  if type(opts.sidebars) ~= "table" or #opts.sidebars == 0 then
    return
  end
  vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = opts.sidebars,
    callback = function()
      vim.opt_local.winhighlight:append("Normal:NormalSB,SignColumn:SignColumnSB,EndOfBuffer:EndOfBufferSB")
    end,
  })
end

function M.apply()
  if vim.version().minor < 8 and vim.version().major == 0 then
    vim.notify("light-modern requires Neovim >= 0.8", vim.log.levels.ERROR)
    return
  end

  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  local style = config.options.style == "dark" and "dark" or "light"
  local name = style == "dark" and "dark-modern" or "light-modern"

  vim.o.termguicolors = true
  vim.o.background = style
  vim.g.colors_name = name

  local hl, c = M.highlights(M.colors(style))
  for group, spec in pairs(hl) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  if config.options.terminal_colors then
    util.terminal(palette.terminal[style])
  end

  setup_sidebars(config.options)

  vim.api.nvim_exec_autocmds("ColorScheme", { pattern = name, modeline = false })

  return c
end

return M
