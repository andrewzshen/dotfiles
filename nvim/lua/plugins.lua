-- ~/.dotfiles/nvim/lua/plugins.lua
-- Where plugins are defined and configured

vim.pack.add({
    { src = "https://github.com/olimorris/onedarkpro.nvim",       name = "onedarkpro" },
    { src = "https://github.com/mason-org/mason.nvim",            name = "mason" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim",  name = "mason-lspconfig" },
    { src = "https://github.com/neovim/nvim-lspconfig",           name = "lspconfig" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "treesitter" },
    { src = "https://github.com/nvim-mini/mini.nvim",             name = "mini" },
    { src = "https://github.com/lewis6991/gitsigns.nvim",         name = "gitsigns" },
    { src = "https://github.com/prichrd/netrw.nvim",              name = "netrw" },
})

require("onedarkpro").setup({
    styles = {
        comments = "italic"
    },
})

vim.cmd("colorscheme onedark")

require("mason").setup()
require("mason-lspconfig").setup()

require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c",
        "java",
        "markdown",
        "markdown_inline",
        "bash",
        "javascript",
        "typescript",
        "lua"
    },
    auto_install = false,
    highlight = { enable = true },
})

require("mini.pick")
require("mini.statusline").setup()
require("mini.pairs").setup()
require("mini.icons").setup()

require("gitsigns").setup({
    signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
    },
})

require("netrw").setup()
