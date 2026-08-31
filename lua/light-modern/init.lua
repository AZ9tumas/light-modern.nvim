local config = require("light-modern.config")

local M = {}

---@param opts table|nil
function M.setup(opts)
  config.setup(opts)
end

---@param opts table|nil
function M.load(opts)
  if opts then
    config.extend(opts)
  end
  return require("light-modern.theme").apply()
end

---@param style string|nil "light" or "dark"
---@return table
function M.colors(style)
  return require("light-modern.theme").colors(style)
end

---@return table
function M.highlights()
  return (require("light-modern.theme").highlights())
end

return M
