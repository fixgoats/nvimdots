vim.lsp.enable({ "clangd", "rust_analyzer", "lua_ls", "basedpyright" })
vim.lsp.set_log_level("off")

vim.diagnostic.config({
  virtual_lines = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
