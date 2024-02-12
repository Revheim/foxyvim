vim.g.mapleader = " "
vim.g.localmapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.conceallevel = 0
-- vim.opt.timeoutlen = 1000
vim.opt.undofile = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.updatetime = 300
vim.opt.writebackup = false

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.termguicolors = true

vim.opt.ignorecase = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.backspace = "2"

vim.opt.clipboard = "unnamedplus"

-- vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

-- vim.opt.showcommand = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.shiftround = true

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
