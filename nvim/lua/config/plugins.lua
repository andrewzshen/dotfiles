-- ~/.dotfiles/nvim/lua/config/plugins.lua
-- Plugin definitions and configurations

vim.pack.add({
    { src = "https://github.com/olimorris/onedarkpro.nvim" , name = "onedarkpro" },
})

require("onedarkpro").setup({
    styles = {
        comments = "italic"
    },
    plugins = {

    },
})
