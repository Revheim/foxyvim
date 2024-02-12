vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", {noremap=true, silent=true})

vim.keymap.set("n", "<leader>w|", "<cmd>vsplit<cr>", {noremap=true, silent=true}) 
vim.keymap.set("n", "<leader>w-", "<cmd>split<cr>", {noremap=true, silent=true}) 

vim.keymap.set("n", "<leader>", "<cmd>WhichKey<cr>", {noremap=true, silent=true})

vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<cr>", {desc = "Switch to window left", noremap=true, silent=true})
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<cr>", {desc = "Switch to window below", noremap=true, silent=true})
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<cr>", {desc = "Switch to window above", noremap=true, silent=true})
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<cr>", {desc = "Switch to window right", noremap=true, silent=true})

vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", {noremap=true, silent=true})
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", {noremap=true, silent=true})

vim.keymap.set("n", "<C-s>", "<cmd>write<cr>", {noremap=true, silent=true})
vim.keymap.set("i", "<C-s>", "<cmd>write<cr><esc>", {noremap=true, silent=true})

vim.keymap.set("n", "<leader>jd", "<cmd>lua vim.lsp.buf.definition()<cr>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>js", "<cmd>lua vim.lsp.buf.definition({jump_type = vsplit})<cr>", {noremap=true, silent=true})

-- copied from LazyVim
-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- buffers
-- vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- windows
vim.keymap.set("n", "<leader>wr", "<C-W>r", { desc = "Rotate windows", remap = true })
vim.keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

