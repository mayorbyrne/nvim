-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use {'quick-lint/quick-lint-js', rtp = 'plugin/vim/quick-lint-js.vim', tag = '2.14.0', opt = true}
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use { 'projekt0n/github-nvim-theme' }
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'github/copilot.vim'
  use 'folke/trouble.nvim'
end)
