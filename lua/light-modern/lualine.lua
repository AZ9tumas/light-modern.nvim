local M = {}

local function contrast_fg(hex)
  local function channel(i)
    local v = tonumber(hex:sub(i, i + 1), 16) / 255
    return v <= 0.03928 and v / 12.92 or ((v + 0.055) / 1.055) ^ 2.4
  end
  local luminance = 0.2126 * channel(2) + 0.7152 * channel(4) + 0.0722 * channel(6)
  return luminance > 0.21 and "#000000" or "#ffffff"
end

---@param style string "light" or "dark"
---@return table
function M.theme(style)
  local ok, theme = pcall(require, "light-modern.theme")
  local c = ok and theme.colors(style) or require("light-modern.palette").styles[style]
  local b_bg = style == "dark" and c.bg_dark or c.bg_sel

  local function mode(bg)
    return {
      a = { fg = contrast_fg(bg), bg = bg, gui = "bold" },
      b = { fg = c.fg, bg = b_bg },
      c = { fg = c.fg_dim, bg = c.bg_alt },
    }
  end

  return {
    normal = mode(c.accent),
    insert = mode(c.added),
    visual = mode(c.control),
    replace = mode(c.removed),
    command = mode(c.warn),
    terminal = mode(c.type),
    inactive = {
      a = { fg = c.fg_dimmer, bg = c.bg_alt },
      b = { fg = c.fg_dimmer, bg = c.bg_alt },
      c = { fg = c.fg_dimmer, bg = c.bg_alt },
    },
  }
end

return M
