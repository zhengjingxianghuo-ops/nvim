local opts = { noremap = true, silent = true, buffer = bufnr }

vim.keymap.set('i', 'jk', '<Esc>', { desc = '退出插入模式', noremap = true, silent = true })
