local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", opts)

vim.keymap.set("n", "<leader>w|", "<cmd>vsplit<cr>", opts) 
vim.keymap.set("n", "<leader>w-", "<cmd>split<cr>", opts) 

vim.keymap.set("n", "<leader>", "<cmd>WhichKey<cr>", opts)

vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", opts)
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", opts)

-- vim.keymap.set("n", "<C-s>", "<cmd>write<cr>", opts)
-- vim.keymap.set("i", "<C-s>", "<cmd>write<cr><esc>", opts)
vim.keymap.set("n", "<C-s>", "<cmd>lua vim.lsp.buf.format()<cr><cmd>write<cr><esc>", opts)
vim.keymap.set("i", "<C-s>", "<cmd>lua vim.lsp.buf.format()<cr><cmd>write<cr><esc>", opts)

vim.keymap.set("n", "<leader>jd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
vim.keymap.set("n", "<leader>js", "<cmd>lua vim.lsp.buf.definition({jump_type = vsplit})<cr>", opts)

vim.keymap.set("n", "<A-s>", "<cmd>lua vim.lsp.buf.format()<cr>", opts)
vim.keymap.set("i", "<A-s>", "<cmd>lua vim.lsp.buf.format()<cr>", opts)

-- some of this copied from LazyVim
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
-- vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
-- vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>,", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope buffers<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>tf", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search current buffer" })
vim.keymap.set("n", "<leader>tg", "<cmd>Telescope grep_string<cr>", { desc = "Search current buffer" })

-- windows
vim.keymap.set("n", "<leader>wr", "<C-W>r", { desc = "Rotate windows", remap = true })
vim.keymap.set("n", "<leader>.", "<C-W>p", { desc = "Other window", remap = true })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<cr>", {desc = "Switch to window left"})
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<cr>", {desc = "Switch to window below"})
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<cr>", {desc = "Switch to window above"})
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<cr>", {desc = "Switch to window right"})

-- codeium
vim.keymap.set('n', '<M-c>', "<cmd>CodeiumToggle<cr>", { silent = true, remap = true })
vim.keymap.set('i', '<M-c>', "<cmd>CodeiumToggle<cr>", { silent = true, remap = true })

vim.keymap.set('i', '<M-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<M-ø>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<M-æ>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<M-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
  
