local M = {}

local function hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return {
    tonumber(hex:sub(1, 2), 16),
    tonumber(hex:sub(3, 4), 16),
    tonumber(hex:sub(5, 6), 16),
  }
end

--- Mix `fg` into `bg` at `alpha` (0..1) and return the resulting hex string.
function M.blend(fg, bg, alpha)
  local f, b = hex_to_rgb(fg), hex_to_rgb(bg)
  local function channel(i)
    local v = (alpha * f[i]) + ((1 - alpha) * b[i])
    return math.floor(math.min(math.max(v, 0), 255) + 0.5)
  end
  return string.format("#%02x%02x%02x", channel(1), channel(2), channel(3))
end

--- Pull `hex` towards black by `amount` (0..1).
function M.darken(hex, amount)
  return M.blend(hex, "#000000", 1 - amount)
end

--- Pull `hex` towards white (or `base`) by `amount` (0..1).
function M.lighten(hex, amount, base)
  return M.blend(hex, base or "#ffffff", 1 - amount)
end

--- Merge a user style table (`{ italic = true }`) onto a highlight spec.
function M.style(base, style)
  if type(style) ~= "table" or vim.tbl_isempty(style) then
    return base
  end
  return vim.tbl_extend("force", base, style)
end

--- Expose the palette to `:terminal` buffers.
function M.terminal(term)
  vim.g.terminal_color_0  = term.black
  vim.g.terminal_color_1  = term.red
  vim.g.terminal_color_2  = term.green
  vim.g.terminal_color_3  = term.yellow
  vim.g.terminal_color_4  = term.blue
  vim.g.terminal_color_5  = term.magenta
  vim.g.terminal_color_6  = term.cyan
  vim.g.terminal_color_7  = term.white
  vim.g.terminal_color_8  = term.bright_black
  vim.g.terminal_color_9  = term.bright_red
  vim.g.terminal_color_10 = term.bright_green
  vim.g.terminal_color_11 = term.bright_yellow
  vim.g.terminal_color_12 = term.bright_blue
  vim.g.terminal_color_13 = term.bright_magenta
  vim.g.terminal_color_14 = term.bright_cyan
  vim.g.terminal_color_15 = term.bright_white
end

return M
