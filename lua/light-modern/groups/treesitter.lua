local util = require("light-modern.util")

local M = {}

function M.get(c, opts)
  local s = opts.styles

  return {
    ["@variable"]                   = util.style({ fg = c.variable }, s.variables),
    ["@variable.builtin"]           = { fg = c.keyword },              -- variable.language (this/self)
    ["@variable.parameter"]         = util.style({ fg = c.variable }, s.parameters),
    ["@variable.parameter.builtin"] = util.style({ fg = c.variable }, s.parameters),
    ["@variable.member"]            = util.style({ fg = c.variable }, s.properties),

    ["@constant"]                   = { fg = c.constant },             -- variable.other.constant
    ["@constant.builtin"]           = { fg = c.keyword },              -- constant.language
    ["@constant.macro"]             = { fg = c.keyword },

    ["@module"]                     = util.style({ fg = c.type }, s.types),
    ["@module.builtin"]             = util.style({ fg = c.type }, s.types),
    ["@label"]                      = { fg = c.control },

    ["@string"]                     = util.style({ fg = c.string }, s.strings),
    ["@string.documentation"]       = util.style({ fg = c.string }, s.strings),
    ["@string.regexp"]              = { fg = c.regexp },
    ["@string.escape"]              = { fg = c.escape },
    ["@string.special"]             = { fg = c.escape },
    ["@string.special.symbol"]      = { fg = c.constant },
    ["@string.special.path"]        = util.style({ fg = c.string }, s.strings),
    ["@string.special.url"]         = { fg = c.accent, underline = true },
    ["@character"]                  = util.style({ fg = c.string }, s.strings),
    ["@character.special"]          = { fg = c.escape },
    ["@boolean"]                    = util.style({ fg = c.keyword }, s.booleans),
    ["@number"]                     = util.style({ fg = c.number }, s.numbers),
    ["@number.float"]               = util.style({ fg = c.number }, s.numbers),

    ["@type"]                       = util.style({ fg = c.type }, s.types),
    ["@type.builtin"]               = { fg = c.keyword },              -- storage.type (int, bool, ...)
    ["@type.definition"]            = util.style({ fg = c.type }, s.types),
    ["@type.qualifier"]             = { fg = c.keyword },
    ["@attribute"]                  = { fg = c.func },
    ["@attribute.builtin"]          = { fg = c.func },
    ["@property"]                   = util.style({ fg = c.variable }, s.properties),

    ["@function"]                   = util.style({ fg = c.func }, s.functions),
    ["@function.builtin"]           = util.style({ fg = c.func }, s.functions),
    ["@function.call"]              = util.style({ fg = c.func }, s.functions),
    ["@function.macro"]             = util.style({ fg = c.func }, s.functions),
    ["@function.method"]            = util.style({ fg = c.func }, s.functions),
    ["@function.method.call"]       = util.style({ fg = c.func }, s.functions),
    ["@constructor"]                = util.style({ fg = c.type }, s.types),
    ["@operator"]                   = util.style({ fg = c.operator }, s.operators),

    ["@keyword"]                    = util.style({ fg = c.keyword }, s.keywords),
    ["@keyword.coroutine"]          = util.style({ fg = c.control }, s.keywords),
    ["@keyword.function"]           = util.style({ fg = c.keyword }, s.keywords),
    ["@keyword.operator"]           = util.style({ fg = c.keyword }, s.keywords),
    ["@keyword.import"]             = util.style({ fg = c.control }, s.keywords),
    ["@keyword.type"]               = util.style({ fg = c.keyword }, s.keywords),
    ["@keyword.modifier"]           = util.style({ fg = c.keyword }, s.keywords),
    ["@keyword.repeat"]             = util.style({ fg = c.control }, s.conditionals),
    ["@keyword.return"]             = util.style({ fg = c.control }, s.keywords),
    ["@keyword.debug"]              = util.style({ fg = c.control }, s.keywords),
    ["@keyword.exception"]          = util.style({ fg = c.control }, s.keywords),
    ["@keyword.conditional"]        = util.style({ fg = c.control }, s.conditionals),
    ["@keyword.conditional.ternary"]= util.style({ fg = c.operator }, s.operators),
    ["@keyword.directive"]          = { fg = c.keyword },
    ["@keyword.directive.define"]   = { fg = c.keyword },

    ["@punctuation.delimiter"]      = { fg = c.operator },
    ["@punctuation.bracket"]        = { fg = c.operator },
    ["@punctuation.special"]        = { fg = c.keyword },              -- template expression braces

    ["@comment"]                    = util.style({ fg = c.comment }, s.comments),
    ["@comment.documentation"]      = util.style({ fg = c.comment }, s.comments),
    ["@comment.error"]              = { fg = c.bg, bg = c.error, bold = true },
    ["@comment.warning"]            = { fg = c.bg, bg = c.warn, bold = true },
    ["@comment.todo"]               = { fg = c.bg, bg = c.info, bold = true },
    ["@comment.note"]               = { fg = c.bg, bg = c.hint, bold = true },

    ["@markup"]                     = { fg = c.fg_editor },
    ["@markup.strong"]              = { fg = c.markup_bold, bold = true },
    ["@markup.italic"]              = { italic = true },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.underline"]           = { underline = true },
    ["@markup.heading"]             = { fg = c.tag, bold = true },
    ["@markup.heading.1"]           = { fg = c.tag, bold = true },
    ["@markup.heading.2"]           = { fg = c.tag, bold = true },
    ["@markup.heading.3"]           = { fg = c.tag, bold = true },
    ["@markup.heading.4"]           = { fg = c.tag, bold = true },
    ["@markup.heading.5"]           = { fg = c.tag, bold = true },
    ["@markup.heading.6"]           = { fg = c.tag, bold = true },
    ["@markup.quote"]               = { fg = c.property_value, italic = true },
    ["@markup.math"]                = { fg = c.number },
    ["@markup.link"]                = { fg = c.accent },
    ["@markup.link.label"]          = { fg = c.property_value },
    ["@markup.link.url"]            = { fg = c.accent, underline = true },
    ["@markup.raw"]                 = { fg = c.tag },                   -- markup.inline.raw
    ["@markup.raw.block"]           = { fg = c.fg_editor },
    ["@markup.list"]                = { fg = c.property_value },
    ["@markup.list.checked"]        = { fg = c.added },
    ["@markup.list.unchecked"]      = { fg = c.fg_dim },

    ["@diff.plus"]                  = { fg = c.added },
    ["@diff.minus"]                 = { fg = c.removed },
    ["@diff.delta"]                 = { fg = c.changed },

    ["@tag"]                        = { fg = c.tag },                   -- entity.name.tag
    ["@tag.builtin"]                = { fg = c.tag },
    ["@tag.attribute"]              = { fg = c.attribute },             -- entity.other.attribute-name
    ["@tag.delimiter"]              = { fg = c.tag },                   -- punctuation.definition.tag

    ["@none"]                       = {},
    ["@conceal"]                    = { fg = c.fg_muted },
    ["@spell"]                      = {},
    ["@nospell"]                    = {},

    ["@string.html"]                = { fg = c.keyword },            -- attribute values are blue, not string-red
    ["@string.xml"]                 = { fg = c.keyword },
    ["@property.json"]              = { fg = c.property_value },     -- support.type.property-name
    ["@property.jsonc"]             = { fg = c.property_value },
    ["@property.json5"]             = { fg = c.property_value },
    ["@property.yaml"]              = { fg = c.property_value },
    ["@property.toml"]              = { fg = c.property_value },
    ["@label.json"]                 = { fg = c.property_value },
    ["@label.yaml"]                 = { fg = c.property_value },
    ["@property.css"]               = { fg = c.type },               -- support.type.property-name.css
    ["@type.css"]                   = { fg = c.tag },                -- entity.name.tag (selectors)
    ["@tag.css"]                    = { fg = c.tag },
    ["@string.plain.css"]           = { fg = c.string },
    ["@number.css"]                 = { fg = c.number },
    ["@function.css"]               = { fg = c.func },
    ["@constant.css"]               = { fg = c.property_value },
    ["@property.scss"]              = { fg = c.type },
    ["@type.builtin.python"]        = { fg = c.type },               -- support.type, not storage.type
    ["@variable.builtin.python"]    = { fg = c.keyword },
    ["@constructor.lua"]            = { fg = c.operator },
    ["@variable.bash"]              = { fg = c.variable },
    ["@function.builtin.bash"]      = { fg = c.func },
    ["@markup.link.vimdoc"]         = { fg = c.accent },
    ["@label.vimdoc"]               = { fg = c.tag, bold = true },
    ["@markup.heading.gitcommit"]   = { fg = c.markup_bold, bold = true },
    ["@comment.gitcommit"]          = { fg = c.comment },
  }
end

return M
