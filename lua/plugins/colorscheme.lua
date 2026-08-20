-- lua/plugins/rose-pine.lua
return {
  "webhooked/kanso.nvim",
  opts = {},
  config = function()
    require('kanso').setup({
      minimal = true,
      foreground = "saturated",
    })
    vim.cmd("colorscheme kanso-mist")
  end,
}
