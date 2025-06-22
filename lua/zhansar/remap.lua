vim.g.mapleader = " " 
local opts = { noremap = true, silent = true } 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 
vim.keymap.set("n", "<leader>w", ":update<Return>", opts) 
vim.keymap.set("n", "<leader>q", ":quit<Return>", opts) 
vim.keymap.set("n", "<leader>ss", ":split<Return>", opts)
vim.keymap.set("n", "<leader>sv", ":vsplit<Return>", opts)

