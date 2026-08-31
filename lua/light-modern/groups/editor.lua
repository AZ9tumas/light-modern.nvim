--- Core editor and UI highlight groups.

local M = {}

function M.get(c, opts)
  local bg = opts.transparent and c.none or c.bg
  local bg_sidebar = opts.transparent and c.none or c.bg_alt
  local bg_float = opts.transparent and c.none or c.bg_float

  local hl = {
    Normal        = { fg = c.fg_editor, bg = bg },
    NormalNC      = { fg = c.fg_editor, bg = opts.dim_inactive and c.bg_alt or bg },
    NormalFloat   = { fg = c.fg, bg = bg_float },
    NormalSB      = { fg = c.fg, bg = bg_sidebar },
    FloatBorder   = { fg = c.border_alt, bg = bg_float },
    FloatTitle    = { fg = c.accent, bg = bg_float, bold = true },
    FloatFooter   = { fg = c.fg_muted, bg = bg_float },

    Cursor        = { fg = c.bg, bg = c.accent },
    lCursor       = { fg = c.bg, bg = c.accent },
    CursorIM      = { fg = c.bg, bg = c.accent },
    TermCursor    = { fg = c.bg, bg = c.accent },
    TermCursorNC  = { fg = c.bg, bg = c.fg_dim },

    CursorLine    = opts.cursorline and { bg = c.bg_cursorline } or {},
    CursorColumn  = { bg = c.bg_cursorline },
    ColorColumn   = { bg = c.bg_alt },

    LineNr        = { fg = c.line_nr, bg = bg },
    LineNrAbove   = { fg = c.line_nr, bg = bg },
    LineNrBelow   = { fg = c.line_nr, bg = bg },
    CursorLineNr  = { fg = c.line_nr_active, bg = opts.cursorline and c.bg_cursorline or bg, bold = true },
    CursorLineSign= { bg = opts.cursorline and c.bg_cursorline or bg },
    CursorLineFold= { bg = opts.cursorline and c.bg_cursorline or bg },
    SignColumn    = { fg = c.line_nr, bg = bg },
    SignColumnSB  = { fg = c.line_nr, bg = bg_sidebar },
    FoldColumn    = { fg = c.line_nr, bg = bg },
    Folded        = { fg = c.fg_dim, bg = c.bg_sel },

    Conceal       = { fg = c.fg_muted },
    NonText       = { fg = c.indent },
    Whitespace    = { fg = c.indent },
    SpecialKey    = { fg = c.indent_active },
    EndOfBuffer   = { fg = opts.ending_tildes and c.indent or bg, bg = bg },
    EndOfBufferSB = { fg = opts.ending_tildes and c.indent or c.bg_alt, bg = bg_sidebar },

    Directory     = { fg = c.accent },
    Title         = { fg = c.accent, bold = true },
    Question      = { fg = c.accent },
    MoreMsg       = { fg = c.accent },
    ModeMsg       = { fg = c.fg, bold = true },
    MsgArea       = { fg = c.fg },
    MsgSeparator  = { fg = c.border, bg = c.bg_alt },
    ErrorMsg      = { fg = c.error, bold = true },
    WarningMsg    = { fg = c.warn },

    Visual        = { bg = c.selection },
    VisualNOS     = { bg = c.selection_dim },
    Search        = { fg = c.fg_editor, bg = c.match },
    IncSearch     = { fg = c.fg_editor, bg = c.match_cur },
    CurSearch     = { fg = c.fg_editor, bg = c.match_cur, bold = true },
    Substitute    = { fg = c.bg, bg = c.removed },
    MatchParen    = { bg = c.bg_match, bold = true },

    Pmenu         = { fg = c.fg, bg = bg_float },
    PmenuSel      = { fg = c.fg_editor, bg = c.bg_sel, bold = true },
    PmenuKind     = { fg = c.type, bg = bg_float },
    PmenuKindSel  = { fg = c.type, bg = c.bg_sel },
    PmenuExtra    = { fg = c.fg_muted, bg = bg_float },
    PmenuExtraSel = { fg = c.fg_muted, bg = c.bg_sel },
    PmenuSbar     = { bg = c.bg_dark },
    PmenuThumb    = { bg = c.border_alt },
    PmenuMatch    = { fg = c.accent, bold = true },
    PmenuMatchSel = { fg = c.accent, bg = c.bg_sel, bold = true },
    WildMenu      = { fg = c.fg_editor, bg = c.selection },
    Menu          = { fg = c.fg, bg = bg_float },
    Scrollbar     = { bg = c.bg_dark },
    Tooltip       = { fg = c.fg, bg = bg_float },

    StatusLine    = { fg = c.fg, bg = c.bg_alt },
    StatusLineNC  = { fg = c.fg_dimmer, bg = c.bg_alt },
    StatusLineTerm    = { fg = c.fg, bg = c.bg_alt },
    StatusLineTermNC  = { fg = c.fg_dimmer, bg = c.bg_alt },
    TabLine       = { fg = c.fg_dimmer, bg = c.bg_alt },
    TabLineFill   = { bg = c.bg_alt },
    TabLineSel    = { fg = c.fg, bg = bg },
    WinBar        = { fg = c.fg_dim, bg = bg, bold = true },
    WinBarNC      = { fg = c.fg_dimmer, bg = bg },

    VertSplit     = { fg = c.border, bg = bg },
    WinSeparator  = { fg = c.border, bg = bg },

    DiffAdd       = { bg = c.diff_add },
    DiffChange    = { bg = c.diff_change },
    DiffDelete    = { bg = c.diff_delete },
    DiffText      = { bg = c.diff_text },
    diffAdded     = { fg = c.added },
    diffRemoved   = { fg = c.removed },
    diffChanged   = { fg = c.changed },
    diffOldFile   = { fg = c.removed },
    diffNewFile   = { fg = c.added },
    diffFile      = { fg = c.markup_bold, bold = true },
    diffLine      = { fg = c.fg_dim },
    diffIndexLine = { fg = c.control },

    SpellBad      = { sp = c.error, undercurl = true },
    SpellCap      = { sp = c.warn, undercurl = true },
    SpellLocal    = { sp = c.info, undercurl = true },
    SpellRare     = { sp = c.hint, undercurl = true },

    QuickFixLine  = { bg = c.selection_dim, bold = true },
    qfLineNr      = { fg = c.line_nr },
    qfFileName    = { fg = c.accent },

    healthError   = { fg = c.error },
    healthWarning = { fg = c.warn },
    healthSuccess = { fg = c.ok },

    debugPC       = { bg = c.accent_soft },
    debugBreakpoint = { fg = c.removed },

    -- `:checkhealth`, `:h`, and other built-in filetypes
    helpCommand   = { fg = c.tag, bg = c.bg_alt },
    helpExample   = { fg = c.fg_dim },
    helpHeader    = { fg = c.tag, bold = true },
    helpSectionDelim = { fg = c.border_alt },
    helpHyperTextEntry = { fg = c.accent, bold = true },
    helpHyperTextJump  = { fg = c.accent },

    -- netrw
    netrwDir      = { fg = c.accent },
    netrwClassify = { fg = c.accent },
    netrwExe      = { fg = c.added },
    netrwSymLink  = { fg = c.type },
  }

  return hl
end

return M
