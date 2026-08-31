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

---@return table
function M.colors()
  return require("light-modern.theme").colors()
end

---@return table
function M.highlights()
  return (require("light-modern.theme").highlights())
end

return M
