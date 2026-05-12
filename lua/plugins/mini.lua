-- lua/plugins/mini.lua

return {
  {
    'nvim-mini/mini.nvim',
    version = '*',
    config = function()
      -- statusline
      require('mini.statusline').setup { icons = true }

      -- require('mini.tabline').setup {}
      -- pairs
      require('mini.pairs').setup {}

      require('mini.files').setup {
        options = {
          use_as_default_explorer = false
        }
      }
      -- aminmation for smooth scrolling
      -- trailspace
      -- require('mini.trailspace').setup {}
    end
  },
}
