vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")
vim.keymap.set("n", "Q", "<cmd>q<cr>")
vim.keymap.set("v", "<c-c>", '"+y')
-- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { silent = true, desc = "Clear search highlight", })

vim.keymap.set("n", "<C-->", "<cmd>split<cr>", { desc = "Split horizontally", })
vim.keymap.set("n", "<C-\\>", "<cmd>vsplit<cr>", { desc = "Split vertically", })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left window", })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus lower window", })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus upper window", })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right window", })


vim.keymap.set("n", "<C-t>", "<cmd>tabnew<cr>", { desc = "New tab", })
vim.keymap.set("n", "<C-[>", "<cmd>tabprevious<cr>", { desc = "Previous tab", })
vim.keymap.set("n", "<C-]>", "<cmd>tabnext<cr>", { desc = "Next tab", })
