vim.g.mapleader = " "

-- Open file explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Write and source file
vim.keymap.set("n", "<leader>so", ":w <bar> :so <enter>")

