vim.lsp.enable 'html'
vim.lsp.enable 'cssls'
vim.lsp.enable 'ts_ls'
vim.lsp.enable 'lua_ls'
vim.lsp.enable 'rust_anlyzer'

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({
      async = false,
    })
  end,
})

vim.diagnostic.config({
  signs = false,
  underline = false,
  virtual_text = true
})
