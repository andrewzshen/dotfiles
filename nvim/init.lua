-- ~/.dotfiles/nvim/init.lua
-- Where literally everything is

-- General neovim options
local o = vim.opt

-- Appearance
o.termguicolors = true
o.signcolumn = "yes:1"
o.list = false
o.number = true
o.numberwidth = 2
o.cursorline = true
o.background = "dark"

-- Editor behavior
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.shiftround = true
o.wrap = false
o.scrolloff = 8

-- Persistence
o.swapfile = false
o.backup = false
o.undofile = true
o.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"

-- Searching
o.incsearch = true
o.inccommand = "split"
o.ignorecase = true
o.smartcase = true

-- Netrw for file explorer
vim.g.netrw_liststyle = 1
vim.g.netrw_sort_by = "size"

-- Load the plugins first
vim.pack.add({
    { src = "https://github.com/olimorris/onedarkpro.nvim",       name = "onedarkpro" },
    { src = "https://github.com/neovim/nvim-lspconfig",           name = "lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim",            name = "mason" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "treesitter" },
})

require("onedarkpro").setup({
    styles = {
        comments = "italic"
    },
})

require("mason").setup()

-- LSP configs
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            }
        }
    }
})

vim.lsp.enable({
    "lua_ls",
    "clangd",
    "jdtls",
    "bashls",
})

-- Keymaps
local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<leader>w", vim.cmd.write)
keymap("n", "<leader>q", vim.cmd.quit)
keymap("n", "<leader>o", function()
    vim.cmd.update()
    vim.cmd.source()
end)

keymap("n", "<leader>e", ":Ex %:p:h<CR>")
keymap("n", "<leader>f", function() vim.lsp.buf.format() end)

-- Misc
vim.cmd("colorscheme onedark")
