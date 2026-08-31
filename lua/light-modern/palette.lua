--- Colour palette for `light-modern`.
---
--- Values are transcribed from Visual Studio Code's default "Light Modern"
--- theme, which is `light_modern.json` layered on top of `light_plus.json`
--- and `light_vs.json` in the built-in `theme-defaults` extension.
--- The comment after each entry names the VS Code key it comes from.

local M = {}

M.colors = {
  ---------------------------------------------------------------------------
  -- Surfaces
  ---------------------------------------------------------------------------
  bg            = "#ffffff", -- editor.background
  bg_alt        = "#f8f8f8", -- sideBar / statusBar / panel / tab.inactiveBackground
  bg_dark       = "#f3f3f3", -- welcomePage.tileBackground
  bg_float      = "#f8f8f8", -- editorWidget.background / editorSuggestWidget.background
  bg_sel        = "#e8e8e8", -- list.activeSelectionBackground
  bg_hover      = "#f2f2f2", -- list.hoverBackground
  bg_cursorline = "#f5f5f5", -- editor.lineHighlightBorder (#eeeeee) softened to a fill
  bg_highlight  = "#dcdcdc", -- editor.wordHighlightBackground (#57575740 over white)
  bg_match      = "#e0e0e0", -- editorBracketMatch.background / border

  ---------------------------------------------------------------------------
  -- Text
  ---------------------------------------------------------------------------
  fg            = "#3b3b3b", -- foreground
  fg_editor     = "#000000", -- editor.foreground
  fg_dim        = "#616161", -- activityBar.inactiveForeground
  fg_dimmer     = "#868686", -- tab.inactiveForeground
  fg_muted      = "#767676", -- input.placeholderForeground

  ---------------------------------------------------------------------------
  -- Lines / chrome
  ---------------------------------------------------------------------------
  border        = "#e5e5e5", -- *.border
  border_alt    = "#cecece", -- input.border / dropdown.border
  indent        = "#d3d3d3", -- editorIndentGuide.background1
  indent_active = "#939393", -- editorIndentGuide.activeBackground1
  line_nr       = "#6e7681", -- editorLineNumber.foreground
  line_nr_active= "#171184", -- editorLineNumber.activeForeground

  ---------------------------------------------------------------------------
  -- Accent (the blue that makes Light Modern look like Light Modern)
  ---------------------------------------------------------------------------
  accent        = "#005fb8", -- focusBorder / button.background / textLink.foreground
  accent_hover  = "#0258a8", -- button.hoverBackground
  accent_bg     = "#bed6ed", -- inputOption.activeBackground
  accent_soft   = "#d2ecff", -- chat.slashCommandBackground

  ---------------------------------------------------------------------------
  -- Selection / search
  ---------------------------------------------------------------------------
  selection     = "#add6ff", -- editor.selectionBackground
  selection_dim = "#e5ebf1", -- editor.inactiveSelectionBackground
  match         = "#f8c9aa", -- editor.findMatchHighlightBackground (#ea5c0055 over white)
  match_cur     = "#f0a15d", -- editor.findMatchBackground, warmed up for contrast

  ---------------------------------------------------------------------------
  -- Diagnostics
  ---------------------------------------------------------------------------
  error         = "#e51400", -- editorError.foreground
  warn          = "#bf8803", -- editorWarning.foreground
  info          = "#1a85ff", -- editorInfo.foreground
  hint          = "#6c6c6c", -- editorHint.foreground
  ok            = "#2ea043", -- editorGutter.addedBackground

  ---------------------------------------------------------------------------
  -- Version control
  ---------------------------------------------------------------------------
  added         = "#2ea043", -- editorGutter.addedBackground
  removed       = "#f85149", -- editorGutter.deletedBackground
  changed       = "#005fb8", -- editorGutter.modifiedBackground
  diff_add      = "#e6ffec",
  diff_delete   = "#ffebe9",
  diff_change   = "#e7f1ff",
  diff_text     = "#cce0ff",

  ---------------------------------------------------------------------------
  -- Syntax (tokenColors from light_vs.json / light_plus.json)
  ---------------------------------------------------------------------------
  comment        = "#008000", -- comment
  keyword        = "#0000ff", -- keyword / storage / constant.language / variable.language
  control        = "#af00db", -- keyword.control (Light+)
  string         = "#a31515", -- string
  number         = "#098658", -- constant.numeric
  regexp         = "#811f3f", -- string.regexp / constant.regexp
  regexp_group   = "#d16969", -- punctuation.definition.group.regexp
  func           = "#795e26", -- entity.name.function / support.function
  type           = "#267f99", -- entity.name.type / support.class / support.type
  variable       = "#001080", -- variable / meta.object-literal.key / support.variable
  constant       = "#0070c1", -- variable.other.constant / variable.other.enummember
  tag            = "#800000", -- entity.name.tag / markup.inline.raw / markup.heading
  attribute      = "#e50000", -- entity.other.attribute-name
  operator       = "#000000", -- keyword.operator
  escape         = "#ee0000", -- constant.character.escape
  property_value = "#0451a5", -- support.constant.property-value / json + yaml keys
  markup_bold    = "#000080", -- markup.bold / meta.diff.header

  none = "NONE",
}

--- ANSI palette, taken from VS Code's light `terminal.ansi*` defaults.
M.terminal = {
  black          = "#000000",
  red            = "#cd3131",
  green          = "#00bc00",
  yellow         = "#949800",
  blue           = "#0451a5",
  magenta        = "#bc05bc",
  cyan           = "#0598bc",
  white          = "#555555",
  bright_black   = "#666666",
  bright_red     = "#cd3131",
  bright_green   = "#14ce14",
  bright_yellow  = "#b5ba00",
  bright_blue    = "#0451a5",
  bright_magenta = "#bc05bc",
  bright_cyan    = "#0598bc",
  bright_white   = "#a5a5a5",
}

return M
