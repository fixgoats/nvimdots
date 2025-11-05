local popup = require("plenary.popup")

local Win_id

function ShowMenu(opts, cb)
  local height = 20
  local width = 30
  local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

  Win_id = popup.create(opts, {
    title = "MyProjects",
    highlight = "MyProjectWindow",
    line = math.floor(((vim.o.lines - height) / 2) - 1),
    col = math.floor((vim.o.columns - width) / 2),
    minwidth = width,
    minheight = height,
    maxwidth = width,
    maxheight = height,
    borderchars = borderchars,
    callback = cb,
  })
  local bufnr = vim.api.nvim_win_get_buf(Win_id)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>lua CloseMenu()<CR>", { silent = false })
end

function CloseMenu()
  vim.api.nvim_win_close(Win_id, true)
end

function ColorSelector()
  local opts = vim.fn.getcompletion("", "color")
  local cb = function(_, sel)
    vim.cmd("colorscheme " .. sel)
    io.output("/home/fixgoats/.config/nvim/lua/config/color.lua")
    io.write('vim.cmd(\"colorscheme ' .. sel .. '\")')
    io.flush()
  end
  ShowMenu(opts, cb)
end

vim.keymap.set("n", "<leader>c", "<cmd>lua ColorSelector()<CR>")
