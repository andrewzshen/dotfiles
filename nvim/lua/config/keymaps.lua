-- ~/.dotfiles/nvim/ 
-- My neovim keymappings

local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<leader>w", ":write<CR>")
keymap("n", "<leader>q", ":quit<CR>")
keymap("n", "<leader>o", ":update :source<CR>")
keymap("n", "<leader>e", ":Ex %:p:h<CR>")
keymap("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>")
