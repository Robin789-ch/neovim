return {
  'nvim-treesitter/nvim-treesitter',

  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install { 'rust', 'python', 'lua', 'markdown', 'vim', 'vimdoc', 'c' }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'rust', 'python', 'markdown', 'lua' },
      callback = function()
        vim.treesitter.start() -- highlighting
        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'     -- folds
        -- vim.wo.foldmethod = 'expr'
        -- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
      end,
    })
  end,
}
