-- Colours from VS Code's light_modern.json / dark_modern.json, each layered
-- over the matching *_plus.json and *_vs.json in the theme-defaults extension.
-- Trailing comments name the VS Code key or TextMate scope each value comes from.
local M = {}

M.styles = {}

M.styles.light = {
  bg            = "#ffffff", -- editor.background
  bg_alt        = "#f8f8f8", -- sideBar / statusBar / panel / tab.inactiveBackground
  bg_dark       = "#f3f3f3", -- welcomePage.tileBackground
  bg_float      = "#f8f8f8", -- editorWidget.background / editorSuggestWidget.background
  bg_sel        = "#e8e8e8", -- list.activeSelectionBackground
  bg_hover      = "#f2f2f2", -- list.hoverBackground
  bg_cursorline = "#f5f5f5", -- editor.lineHighlightBorder (#eeeeee) softened to a fill
  bg_highlight  = "#dcdcdc", -- editor.wordHighlightBackground (#57575740 over white)
  bg_match      = "#e0e0e0", -- editorBracketMatch.background / border

  fg            = "#3b3b3b", -- foreground
  fg_editor     = "#000000", -- editor.foreground
  fg_dim        = "#616161", -- activityBar.inactiveForeground
  fg_dimmer     = "#868686", -- tab.inactiveForeground
  fg_muted      = "#767676", -- input.placeholderForeground

  border        = "#e5e5e5", -- *.border
  border_alt    = "#cecece", -- input.border / dropdown.border
  indent        = "#d3d3d3", -- editorIndentGuide.background1
  indent_active = "#939393", -- editorIndentGuide.activeBackground1
  line_nr       = "#6e7681", -- editorLineNumber.foreground
  line_nr_active= "#171184", -- editorLineNumber.activeForeground

  accent        = "#005fb8", -- focusBorder / button.background / textLink.foreground
  accent_hover  = "#0258a8", -- button.hoverBackground
  accent_bg     = "#bed6ed", -- inputOption.activeBackground
  accent_soft   = "#d2ecff", -- chat.slashCommandBackground

  selection     = "#add6ff", -- editor.selectionBackground
  selection_dim = "#e5ebf1", -- editor.inactiveSelectionBackground
  match         = "#f8c9aa", -- editor.findMatchHighlightBackground (#ea5c0055 over white)
  match_cur     = "#f0a15d", -- editor.findMatchBackground, warmed up for contrast

  error         = "#e51400", -- editorError.foreground
  warn          = "#bf8803", -- editorWarning.foreground
  info          = "#1a85ff", -- editorInfo.foreground
  hint          = "#6c6c6c", -- editorHint.foreground
  ok            = "#2ea043", -- editorGutter.addedBackground

  added         = "#2ea043", -- editorGutter.addedBackground
  removed       = "#f85149", -- editorGutter.deletedBackground
  changed       = "#005fb8", -- editorGutter.modifiedBackground
  diff_add      = "#e6ffec",
  diff_delete   = "#ffebe9",
  diff_change   = "#e7f1ff",
  diff_text     = "#cce0ff",

  comment        = "#008000", -- comment
  keyword        = "#0000ff", -- keyword / storage / constant.language / variable.language
  control        = "#af00db", -- keyword.control
  string         = "#a31515", -- string
  number         = "#098658", -- constant.numeric
  regexp         = "#811f3f", -- string.regexp / constant.regexp
  regexp_group   = "#d16969", -- punctuation.definition.group.regexp
  func           = "#795e26", -- entity.name.function / support.function
  type           = "#267f99", -- entity.name.type / support.class / support.type
  variable       = "#001080", -- variable / meta.object-literal.key / support.variable
  constant       = "#0070c1", -- variable.other.constant / variable.other.enummember
  tag            = "#800000", -- entity.name.tag / markup.heading
  tag_delimiter  = "#800000", -- punctuation.definition.tag
  attribute      = "#e50000", -- entity.other.attribute-name
  operator       = "#000000", -- keyword.operator
  escape         = "#ee0000", -- constant.character.escape
  html_string    = "#0000ff", -- string.quoted.*.html
  property_value = "#0451a5", -- support.constant.property-value
  json_key       = "#0451a5", -- support.type.property-name.json / .yaml
  css_selector   = "#800000", -- entity.name.selector
  markup_raw     = "#800000", -- markup.inline.raw
  markup_list    = "#0451a5", -- punctuation.definition.list.begin.markdown
  markup_bold    = "#000080", -- markup.bold / meta.diff.header

  none = "NONE",
}

M.styles.dark = {
  bg            = "#1f1f1f", -- editor.background
  bg_alt        = "#181818", -- sideBar / statusBar / panel / tab.inactiveBackground
  bg_dark       = "#2b2b2b", -- welcomePage.tileBackground / textCodeBlock.background
  bg_float      = "#202020", -- editorWidget.background
  bg_sel        = "#04395e", -- list.activeSelectionBackground
  bg_hover      = "#2a2d2e", -- list.hoverBackground
  bg_cursorline = "#2a2a2a", -- editor.lineHighlightBorder (#282828) softened to a fill
  bg_highlight  = "#474747", -- editor.wordHighlightBackground (#575757b8 over #1f1f1f)
  bg_match      = "#3a3d41", -- editorBracketMatch.background / border

  fg            = "#cccccc", -- foreground
  fg_editor     = "#cccccc", -- editor.foreground
  fg_dim        = "#9d9d9d", -- descriptionForeground / tab.inactiveForeground
  fg_dimmer     = "#868686", -- activityBar.inactiveForeground
  fg_muted      = "#989898", -- input.placeholderForeground

  border        = "#2b2b2b", -- *.border
  border_alt    = "#3c3c3c", -- input.border / dropdown.border
  indent        = "#404040", -- editorIndentGuide.background1
  indent_active = "#707070", -- editorIndentGuide.activeBackground1
  line_nr       = "#6e7681", -- editorLineNumber.foreground
  line_nr_active= "#cccccc", -- editorLineNumber.activeForeground

  accent        = "#0078d4", -- focusBorder / button.background
  accent_hover  = "#026ec1", -- button.hoverBackground
  accent_bg     = "#22557f", -- inputOption.activeBackground (#2489db82 over #1f1f1f)
  accent_soft   = "#34414b", -- chat.slashCommandBackground

  selection     = "#264f78", -- editor.selectionBackground
  selection_dim = "#3a3d41", -- editor.inactiveSelectionBackground
  match         = "#623315", -- editor.findMatchHighlightBackground (#ea5c0055 over #1f1f1f)
  match_cur     = "#8a4d0a", -- editor.findMatchBackground, warmed up for contrast

  error         = "#f14c4c", -- editorError.foreground
  warn          = "#cca700", -- editorWarning.foreground
  info          = "#3794ff", -- editorInfo.foreground
  hint          = "#b0b0b0", -- editorHint.foreground
  ok            = "#2ea043", -- editorGutter.addedBackground

  added         = "#2ea043", -- editorGutter.addedBackground
  removed       = "#f85149", -- editorGutter.deletedBackground
  changed       = "#0078d4", -- editorGutter.modifiedBackground
  diff_add      = "#1e3226",
  diff_delete   = "#3a1d1f",
  diff_change   = "#1e2f42",
  diff_text     = "#2d4a6b",

  comment        = "#6a9955", -- comment
  keyword        = "#569cd6", -- keyword / storage / constant.language / variable.language
  control        = "#c586c0", -- keyword.control
  string         = "#ce9178", -- string
  number         = "#b5cea8", -- constant.numeric
  regexp         = "#d16969", -- string.regexp
  regexp_group   = "#d16969", -- punctuation.definition.group.regexp
  func           = "#dcdcaa", -- entity.name.function / support.function
  type           = "#4ec9b0", -- entity.name.type / support.class / support.type
  variable       = "#9cdcfe", -- variable / meta.object-literal.key / support.variable
  constant       = "#4fc1ff", -- variable.other.constant / variable.other.enummember
  tag            = "#569cd6", -- entity.name.tag / markup.heading
  tag_delimiter  = "#808080", -- punctuation.definition.tag
  attribute      = "#9cdcfe", -- entity.other.attribute-name
  operator       = "#d4d4d4", -- keyword.operator
  escape         = "#d7ba7d", -- constant.character.escape
  html_string    = "#ce9178", -- string.quoted.*.html
  property_value = "#ce9178", -- support.constant.property-value
  json_key       = "#9cdcfe", -- support.type.property-name.json / .yaml
  css_selector   = "#d7ba7d", -- entity.name.selector
  markup_raw     = "#ce9178", -- markup.inline.raw
  markup_list    = "#6796e6", -- punctuation.definition.list.begin.markdown
  markup_bold    = "#569cd6", -- markup.bold

  none = "NONE",
}

M.terminal = {
  light = {
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
  },
  dark = {
    black          = "#000000",
    red            = "#cd3131",
    green          = "#0dbc79",
    yellow         = "#e5e510",
    blue           = "#2472c8",
    magenta        = "#bc3fbc",
    cyan           = "#11a8cd",
    white          = "#e5e5e5",
    bright_black   = "#666666",
    bright_red     = "#f14c4c",
    bright_green   = "#23d18b",
    bright_yellow  = "#f5f543",
    bright_blue    = "#3b8eea",
    bright_magenta = "#d670d6",
    bright_cyan    = "#29b8db",
    bright_white   = "#e5e5e5",
  },
}

M.colors = M.styles.light

return M
