local M = {}

local colors = {
  bg = "#173c33",
  fg = "#ffffff",
  selection = "#375c53",
  red = "#ff2244",
  pink = "#ffaaaa",
  green = "#88ff88",
  yellow = "#ffff00",
  blue = "#4499ff",
  lightblue = "#88aaff",
  magenta = "#ff66ff",
  cyan = "#00ffff",
  orange = "#ff7700",
  purple = "#bb33bb",
  darkpurple = "#663266",
  gray = "#999999",
}

local rainbow = {
  red = "#ff6666",
  yellow = "#ffff66",
  blue = "#88bbff",
  cyan = "#66ffff",
  purple = "#bb66bb",
  green = "#aaffaa",
  orange = "#ffaa44",
}

function M.colorscheme()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  vim.o.background = "dark"
  vim.g.colors_name = "bleh"

  local set = vim.api.nvim_set_hl

  set(0, "Normal", {bg = colors.bg, fg = colors.fg})
  set(0, "NormalFloat", {bg = colors.bg})
  set(0, "Visual", {bg = colors.selection})
  set(0, "Comment", {fg = colors.gray, italic = true})
  set(0, "FloatBorder", {link = "Comment"})
  set(0, "String", {link = "Normal"})
  set(0, "Identifier", {fg = colors.blue})
  set(0, "Statement", {fg = colors.red})
  set(0, "Function", {fg = colors.pink})
  set(0, "Constant", {fg = colors.purple})
  set(0, "Type", {fg = colors.yellow})
  set(0, "Special", {fg = colors.magenta})
  set(0, "Delimiter", {fg = colors.special})
  set(0, "Underlined", {underline = true})

  set(0, "@constant", {link = "Constant"})
  set(0, "@constant.builtin", {link = "Normal"})
  set(0, "@character", {fg = colors.fg})
  set(0, "@variable", {link = "Normal"})
  set(0, "@variable.member", {link = "Identifier"})
  set(0, "@variable.builtin", { link = "Function" })
  set(0, "@type", {link = "Type"})
  set(0, "@variable.parameter", { link = "Normal" })
  set(0, "@property", {fg = colors.orange})
  set(0, "@tag", {fg = colors.blue})
  set(0, "@tag.attribute", { fg = colors.orange })
  set(0, "@tag.delimiter", { link = 'Delimiter' })
  set(0, "@type.qualifier", { fg = colors.orange })
  set(0, "@module", { fg = colors.yellow })
  set(0, "@markup.heading", { fg = colors.red })
  set(0, "@number", {link = Normal})
  set(0, "@number.float", {link = Normal})
  set(0, "@keyword.storage", { fg = colors.red })

  set(0, "@lsp.type.namespace", { link = '@module' })
  set(0, "@lsp.type.type", { link = '@type' })
  set(0, "@lsp.type.class", { link = '@type' })
  set(0, "@lsp.type.enum", { link = '@type' })
  set(0, "@lsp.type.interface", { link = '@type' })
  set(0, "@lsp.type.struct", { link = '@variable.member' })
  set(0, "@lsp.type.parameter", { fg = colors.orange })
  set(0, "@lsp.type.field", { link = '@variable.member' })
  set(0, "@lsp.type.variable", { link = '@variable' })
  set(0, "@lsp.type.property", { link = '@property' })
  set(0, "@lsp.type.enumMember", { link = '@constant' })
  set(0, "@lsp.type.function", { link = '@function' })
  set(0, "@lsp.type.method", { link = '@function.method' })
  set(0, "@lsp.type.macro", { link = '@function.macro' })
  set(0, "@lsp.type.decorator", { link = '@function' })
  set(0, "@lsp.mod.constant", { link = '@constant' })
  set(0, "RainbowDelimiterRed", {fg = rainbow.red})
  set(0, "RainbowDelimiterOrange", {fg = rainbow.orange})
  set(0, "RainbowDelimiterYellow", {fg = rainbow.yellow})
  set(0, "RainbowDelimiterGreen", {fg = rainbow.green})
  set(0, "RainbowDelimiterBlue", {fg = rainbow.blue})
  set(0, "RainbowDelimiterViolet", {fg = rainbow.purple})
  set(0, "RainbowDelimiterCyan", {fg = rainbow.cyan})
end

return M
