-- lua/plugins/rose-pine.lua
return {
  "rebelot/kanagawa.nvim",
  opts = {},
  config = function()
    require('kanagawa').setup({
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      }
    })
    vim.cmd("colorscheme kanagawa-wave")
  end,
}
