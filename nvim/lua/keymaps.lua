-- ~/.dotfiles/nvim/lua/keymaps.lua
-- Keymap definitions

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

keymap("n", "<leader>w", vim.cmd.write)
keymap("n", "<leader>q", vim.cmd.quit)
keymap("n", "<leader>o", function()
    vim.cmd.update()
    vim.cmd.source()
end)

keymap("n", "<leader>e", function() vim.cmd.Explore(".") end)
keymap("n", "<leader>E", function() vim.cmd.Vexplore(".") end)
keymap("n", "<leader>f", function() vim.lsp.buf.format() end)

local pick = require("mini.pick")

keymap("n", "<leader>p", function() pick.builtin.files() end)
keymap("n", "<leader>h", function() pick.builtin.help() end)
keymap("n", "<leader>g", function() pick.builtin.grep_live() end)
