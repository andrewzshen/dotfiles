-- ~/.dotfiles/nvim/lua/config/options
-- General neovim configuration

local o = vim.opt

-- Appearance
o.termguicolors = true
o.guicursor = ""
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

o.swapfile = false
o.backup = false
o.undofile = true
o.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"

o.incsearch = true
o.inccommand = "split"
o.ignorecase = true
o.smartcase = true

vim.cmd("colorscheme onedark")
