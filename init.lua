local cmp = require'cmp'
vim.g.mapleader = " " 

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.scrolloff=8
vim.opt.autochdir=true

vim.o.tabstop=2 softtabstop=2
vim.o.shiftwidth=2
vim.o.expandtab = true
vim.o.smartindent = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.scrolloff=8
-- empty setup using defaults
require("nvim-tree").setup({
  update_focused_file = {
	  enable = true,
  }
})

vim.cmd('colorscheme github_dark_tritanopia')

require('lspconfig/quick_lint_js').setup {}
require'lspconfig'.tsserver.setup {}
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        update_in_insert = true,
      }
    )

cmp.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
require'lspconfig'.tsserver.setup {}

  

  cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    })
  })
  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['volar'].setup {
    capabilities = capabilities,
    filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
    init_options = {
      typescript = {
        tsdk = '/usr/local/lib/node_modules/typescript/lib'
      }
    }
  }
vim.keymap.set('n', '<Leader>tt', "<cmd>:terminal<cr> cd %:p:h<CR>")
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)
