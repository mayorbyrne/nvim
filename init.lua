vim.g.mapleader = " " 

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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

-- Load all plugins found in the plugin path.
vim.cmd([[ packloadall ]])

-- empty setup using defaults
require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
  }
})

require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  transparent_background = false,
  term_colors = true,
  color_overrides = {
    mocha = {
      base = "#000000",
      mantle = "#000000",
      crust = "#000000",
    },
  },
})

vim.cmd.colorscheme "catppuccin"

vim.keymap.set('n', '<Leader>tree', "<cmd>:NvimTreeOpen<cr>");

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local lsp = require('lsp-zero').preset({
  manage_nvim_cmp = {
    set_extra_mappings = true,
  }
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  }
})
