-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'quick-lint/quick-lint-js', rtp = 'plugin/vim/quick-lint-js.vim', tag = '2.14.0', opt = true}
  use 'github/copilot.vim'
  use 'prettier/vim-prettier'
  use {'neoclide/coc.nvim', branch= 'release'}
  use 'LunarVim/darkplus.nvim'
end)
