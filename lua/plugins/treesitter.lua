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
      end,
    })
  end,
}
