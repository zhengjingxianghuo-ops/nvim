local o = vim.opt

o.number = true
o.relativenumber = true
o.wrap = false
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.swapfile = false
o.backup = false
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.hlsearch = true

o.termguicolors = true
o.cursorline = true
o.signcolumn = 'yes'
o.scrolloff = 4
o.sidescrolloff = 4

local function set_colorcolumn_60()
  vim.opt.colorcolumn =
      tostring(math.floor(vim.api.nvim_win_get_width(0) * 0.6))
end

vim.api.nvim_create_autocmd({ "VimResized", "WinEnter" }, {
  callback = set_colorcolumn_60,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "none" })
    vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = "none" })
    vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = vim.api.nvim_get_hl(0, { name = "FloatBorder" }).fg })
    vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { fg = vim.api.nvim_get_hl(0, { name = "FloatBorder" }).fg })
  end,
})

vim.cmd.colorscheme "catppuccin-mocha"
