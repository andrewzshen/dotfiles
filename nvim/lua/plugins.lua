-- ~/.dotfiles/nvim/lua/plugins.lua
-- Where plugins are defined and configured

vim.pack.add({
    { src = "https://github.com/navarasu/onedark.nvim",       name = "onedark" },
    { src = "https://github.com/mason-org/mason.nvim",            name = "mason" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim",  name = "mason-lspconfig" },
    { src = "https://github.com/neovim/nvim-lspconfig",           name = "lspconfig" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "treesitter" },
    { src = "https://github.com/stevearc/oil.nvim",               name = "oil" },
    { src = "https://github.com/nvim-mini/mini.nvim",             name = "mini" },
    { src = "https://github.com/lewis6991/gitsigns.nvim",         name = "gitsigns" },
    { src = "https://github.com/OXY2DEV/markview.nvim",           name = "markview" },
    { src = "https://github.com/3rd/image.nvim",                  name = "image" },
})

require("onedark").setup({
	style = "dark"
})
require("onedark").load()
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

require("mini.icons").setup()

require("oil").setup({
    default_file_explorer = true,
    columns = {
        "permissions",
        "size",
        "mtime",
        "icon",
    }
})

require("mini.pick").setup()
require("mini.statusline").setup()
require("mini.pairs").setup()

require("gitsigns").setup({
    signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
    },
})

require("markview").setup({
    preview = {
        icon_provider = "mini",
    },
    latex = {
        enable = true,
    },
})

require("image").setup()
