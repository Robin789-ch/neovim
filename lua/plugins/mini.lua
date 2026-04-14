-- lua/plugins/mini.lua

return {
  {
    'nvim-mini/mini.nvim',
    version = '*',
    config = function()
      -- statusline
      local statusline = require 'mini.statusline'
      statusline.setup { icons = true }

      -- pairs
      require('mini.pairs').setup {}

      -- trailspace
      -- require('mini.trailspace').setup {}
    end
  },
}
