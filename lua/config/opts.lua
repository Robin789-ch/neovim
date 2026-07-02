-- lua/config/opts.lua
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.updatetime = 250
vim.opt.shiftwidth = 4
vim.opt.splitright = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars = 'eob: '
vim.opt.clipboard = "unnamedplus"
vim.o.undofile = true
vim.o.backup = false
vim.o.wrap = false
vim.o.writebackup = false
vim.o.scrolloff = 3
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"

-- Required fold settings for UFO
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = "▕",
}
