vim.g.mapleader = " " 

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.scrolloff=8
vim.opt.autochdir=true
vim.o.ignorecase = true

vim.o.tabstop=2 softtabstop=2
vim.o.shiftwidth=2
vim.o.expandtab = true
vim.o.smartindent = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.scrolloff=8

vim.cmd("colorscheme darkplus")

vim.api.nvim_set_keymap('n', '<leader>cs', ':nohlsearch<CR>', { silent = true })

