local clients = {
  vim.lsp.enable('html'),
  vim.lsp.enable('cssls'),
  vim.lsp.enable('ts_ls'),
  vim.lsp.enable('lua_ls'),
  vim.lsp.enable('clangd'),
}

for _, client in ipairs(clients) do
  if client then
    client.on_attach = on_attach
  end
end

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.diagnostic.config({
  signs = false,
  underline = false,
  virtual_text = true,
})
