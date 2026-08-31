local util = require("light-modern.util")

local M = {}

function M.get(c, opts)
  local d = opts.diagnostics
  local underline = d.undercurl and { undercurl = true } or { underline = true }

  local function virt(color)
    if d.background then
      return { fg = color, bg = util.blend(color, c.bg, 0.1) }
    end
    return { fg = color }
  end

  local function underline_of(color)
    return vim.tbl_extend("force", { sp = color }, underline)
  end

  return {
    DiagnosticError = { fg = c.error },
    DiagnosticWarn  = { fg = c.warn },
    DiagnosticInfo  = { fg = c.info },
    DiagnosticHint  = { fg = c.hint },
    DiagnosticOk    = { fg = c.ok },

    DiagnosticVirtualTextError = virt(c.error),
    DiagnosticVirtualTextWarn  = virt(c.warn),
    DiagnosticVirtualTextInfo  = virt(c.info),
    DiagnosticVirtualTextHint  = virt(c.hint),
    DiagnosticVirtualTextOk    = virt(c.ok),

    DiagnosticUnderlineError = underline_of(c.error),
    DiagnosticUnderlineWarn  = underline_of(c.warn),
    DiagnosticUnderlineInfo  = underline_of(c.info),
    DiagnosticUnderlineHint  = underline_of(c.hint),
    DiagnosticUnderlineOk    = underline_of(c.ok),

    DiagnosticFloatingError = { fg = c.error },
    DiagnosticFloatingWarn  = { fg = c.warn },
    DiagnosticFloatingInfo  = { fg = c.info },
    DiagnosticFloatingHint  = { fg = c.hint },
    DiagnosticFloatingOk    = { fg = c.ok },

    DiagnosticSignError = { fg = c.error },
    DiagnosticSignWarn  = { fg = c.warn },
    DiagnosticSignInfo  = { fg = c.info },
    DiagnosticSignHint  = { fg = c.hint },
    DiagnosticSignOk    = { fg = c.ok },

    DiagnosticUnnecessary = { fg = c.fg_muted },
    DiagnosticDeprecated  = { fg = c.fg_muted, strikethrough = true },

    LspReferenceText          = { bg = c.bg_highlight },
    LspReferenceRead          = { bg = c.bg_highlight },
    LspReferenceWrite         = { bg = c.bg_highlight, underline = true },
    LspReferenceTarget        = { bg = c.bg_highlight },
    LspSignatureActiveParameter = { bg = c.accent_soft, bold = true },
    LspCodeLens               = { fg = c.fg_muted, italic = true },
    LspCodeLensSeparator      = { fg = c.border_alt },
    LspInlayHint              = { fg = c.fg_muted, bg = c.bg_dark, italic = true },
    LspInfoBorder             = { fg = c.border_alt, bg = c.bg_float },
    LspInfoTitle              = { fg = c.accent, bold = true },
    LspInfoList               = { fg = c.fg },
    LspInfoFiletype           = { fg = c.type },

    Snippet                   = { fg = c.accent },
    SnippetTabstop            = { bg = c.accent_soft },

    ["@lsp.type.class"]         = { fg = c.type },
    ["@lsp.type.comment"]       = {},
    ["@lsp.type.decorator"]     = { fg = c.func },
    ["@lsp.type.enum"]          = { fg = c.type },
    ["@lsp.type.enumMember"]    = { fg = c.constant },
    ["@lsp.type.event"]         = { fg = c.variable },
    ["@lsp.type.function"]      = { fg = c.func },
    ["@lsp.type.interface"]     = { fg = c.type },
    ["@lsp.type.keyword"]       = { fg = c.keyword },
    ["@lsp.type.macro"]         = { fg = c.keyword },
    ["@lsp.type.method"]        = { fg = c.func },
    ["@lsp.type.modifier"]      = { fg = c.keyword },
    ["@lsp.type.namespace"]     = { fg = c.type },
    ["@lsp.type.number"]        = { fg = c.number },
    ["@lsp.type.operator"]      = { fg = c.operator },
    ["@lsp.type.parameter"]     = { fg = c.variable },
    ["@lsp.type.property"]      = { fg = c.variable },
    ["@lsp.type.regexp"]        = { fg = c.regexp },
    ["@lsp.type.string"]        = { fg = c.string },
    ["@lsp.type.struct"]        = { fg = c.type },
    ["@lsp.type.type"]          = { fg = c.type },
    ["@lsp.type.typeParameter"] = { fg = c.type },
    ["@lsp.type.variable"]      = { fg = c.variable },
    ["@lsp.type.selfKeyword"]   = { fg = c.keyword },
    ["@lsp.type.builtinType"]   = { fg = c.keyword },
    ["@lsp.type.lifetime"]      = { fg = c.keyword },
    ["@lsp.type.generic"]       = { fg = c.type },
    ["@lsp.type.deriveHelper"]  = { fg = c.func },

    ["@lsp.typemod.class.defaultLibrary"]     = { fg = c.type },
    ["@lsp.typemod.function.defaultLibrary"]  = { fg = c.func },
    ["@lsp.typemod.method.defaultLibrary"]    = { fg = c.func },
    ["@lsp.typemod.type.defaultLibrary"]      = { fg = c.type },
    ["@lsp.typemod.variable.defaultLibrary"]  = { fg = c.variable },
    ["@lsp.typemod.variable.readonly"]        = { fg = c.constant },
    ["@lsp.typemod.property.readonly"]        = { fg = c.variable },
    ["@lsp.typemod.variable.global"]          = { fg = c.constant },
    ["@lsp.typemod.variable.static"]          = { fg = c.constant },
    ["@lsp.typemod.keyword.async"]            = { fg = c.control },
    ["@lsp.typemod.keyword.controlFlow"]      = { fg = c.control },
    ["@lsp.typemod.operator.injected"]        = { fg = c.operator },
    ["@lsp.typemod.string.injected"]          = { fg = c.string },
    ["@lsp.typemod.variable.injected"]        = { fg = c.variable },
    ["@lsp.typemod.macro.defaultLibrary"]     = { fg = c.keyword },
    ["@lsp.typemod.function.declaration"]     = { fg = c.func },

    ["@lsp.mod.readonly"]   = {},
    ["@lsp.mod.deprecated"] = { strikethrough = true },
  }
end

return M
