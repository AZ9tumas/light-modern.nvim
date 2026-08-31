local util = require("light-modern.util")

local M = {}

function M.get(c, opts)
  local s = opts.styles

  return {
    Comment        = util.style({ fg = c.comment }, s.comments),           -- comment
    SpecialComment = util.style({ fg = c.comment, bold = true }, s.comments),

    Constant       = util.style({ fg = c.constant }, s.variables),          -- variable.other.constant
    String         = util.style({ fg = c.string }, s.strings),              -- string
    Character      = util.style({ fg = c.string }, s.strings),
    Number         = util.style({ fg = c.number }, s.numbers),              -- constant.numeric
    Float          = util.style({ fg = c.number }, s.numbers),
    Boolean        = util.style({ fg = c.keyword }, s.booleans),            -- constant.language

    Identifier     = util.style({ fg = c.variable }, s.variables),          -- variable
    Function       = util.style({ fg = c.func }, s.functions),              -- entity.name.function

    Statement      = util.style({ fg = c.keyword }, s.keywords),            -- keyword
    Conditional    = util.style({ fg = c.control }, s.conditionals),        -- keyword.control
    Repeat         = util.style({ fg = c.control }, s.conditionals),
    Label          = util.style({ fg = c.control }, s.keywords),
    Operator       = util.style({ fg = c.operator }, s.operators),          -- keyword.operator
    Keyword        = util.style({ fg = c.keyword }, s.keywords),
    Exception      = util.style({ fg = c.control }, s.keywords),

    PreProc        = { fg = c.keyword },                                    -- meta.preprocessor
    Include        = util.style({ fg = c.control }, s.keywords),
    Define         = { fg = c.keyword },
    Macro          = { fg = c.keyword },
    PreCondit      = { fg = c.keyword },

    Type           = util.style({ fg = c.type }, s.types),                  -- entity.name.type
    StorageClass   = util.style({ fg = c.keyword }, s.keywords),            -- storage.modifier
    Structure      = util.style({ fg = c.type }, s.types),
    Typedef        = util.style({ fg = c.type }, s.types),

    Special        = { fg = c.escape },                                     -- constant.character.escape
    SpecialChar    = { fg = c.escape },
    Tag            = { fg = c.tag },                                        -- entity.name.tag
    Delimiter      = { fg = c.operator },
    Debug          = { fg = c.tag },

    Underlined     = { underline = true },
    Bold           = { bold = true },
    Italic         = { italic = true },

    Ignore         = { fg = c.fg_muted },
    Todo           = { fg = c.bg, bg = c.warn, bold = true },
    Error          = { fg = c.error },

    markdownH1     = { fg = c.tag, bold = true },
    markdownH2     = { fg = c.tag, bold = true },
    markdownH3     = { fg = c.tag, bold = true },
    markdownBold   = { fg = c.markup_bold, bold = true },
    markdownItalic = { italic = true },
    markdownCode   = { fg = c.tag },
    markdownCodeBlock = { fg = c.fg_editor },
    markdownLinkText  = { fg = c.accent, underline = true },
    markdownUrl    = { fg = c.property_value },
    markdownListMarker = { fg = c.property_value },
  }
end

return M
