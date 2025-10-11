-- ~/.dotfiles/nvim/lua/lsp.lua
-- Where LSPs are configured and enabled

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            }
        }
    }
})

vim.lsp.config("clangd", {
    cmd = {
        "clangd",
        "--fallback-style=webkit",
    },
})

vim.lsp.enable({
    "lua_ls",
    "clangd",
    "jdtls",
    "bashls",
})
