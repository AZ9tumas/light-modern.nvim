local ok, theme = pcall(require, "light-modern.theme")
local c = ok and theme.colors() or require("light-modern.palette").colors

local white = "#ffffff"

return {
  normal = {
    a = { fg = white, bg = c.accent, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_sel },
    c = { fg = c.fg_dim, bg = c.bg_alt },
  },
  insert = {
    a = { fg = white, bg = c.added, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_sel },
    c = { fg = c.fg_dim, bg = c.bg_alt },
  },
  visual = {
    a = { fg = white, bg = c.control, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_sel },
    c = { fg = c.fg_dim, bg = c.bg_alt },
  },
  replace = {
    a = { fg = white, bg = c.removed, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_sel },
    c = { fg = c.fg_dim, bg = c.bg_alt },
  },
  command = {
    a = { fg = white, bg = c.warn, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_sel },
    c = { fg = c.fg_dim, bg = c.bg_alt },
  },
  terminal = {
    a = { fg = white, bg = c.type, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_sel },
    c = { fg = c.fg_dim, bg = c.bg_alt },
  },
  inactive = {
    a = { fg = c.fg_dimmer, bg = c.bg_alt },
    b = { fg = c.fg_dimmer, bg = c.bg_alt },
    c = { fg = c.fg_dimmer, bg = c.bg_alt },
  },
}
