return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      size = vim.o.lines * 0.75,
    }
  },
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]),
  vim.keymap.set('t', '<C-t>', '<cmd>ToggleTerm<cr>', { desc = 'Toggle Terminal' }),
  vim.keymap.set('n', '<C-t>', '<cmd>ToggleTerm<cr>', { desc = 'Toggle Terminal' }),
}
