--- light-modern.nvim
--- A Neovim port of Visual Studio Code's default "Light Modern" theme.

local config = require("light-modern.config")

local M = {}

--- Store options. Call before `:colorscheme light-modern`.
---@param opts table|nil
function M.setup(opts)
  config.setup(opts)
end

--- Apply the colorscheme. `opts` (if given) is merged on top of `setup()`.
---@param opts table|nil
function M.load(opts)
  if opts then
    config.extend(opts)
  end
  return require("light-modern.theme").apply()
end

--- The resolved palette, for reuse in statuslines and user config.
---@return table
function M.colors()
  return require("light-modern.theme").colors()
end

--- The full highlight table, without applying it.
---@return table
function M.highlights()
  return (require("light-modern.theme").highlights())
end

return M
