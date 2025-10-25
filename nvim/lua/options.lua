-- ~/.dotfiles/nvim/init.lua
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
o.winborder = "rounded"

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
o.mouse = "a"
o.splitright = true
o.splitbelow = true

-- Persistence
o.swapfile = false
o.backup = false
o.undofile = true
o.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"

-- Completion
o.complete = ".,o"
o.completeopt = { "fuzzy", "menuone", "noselect", "popup" }
o.autocomplete = true
o.pumheight = 7

-- Searching
o.incsearch = true
o.inccommand = "nosplit"
o.ignorecase = true
o.smartcase = true

-- Netrw
vim.g.netrw_liststyle = 1

-- Misc
vim.g.have_nerd_font = true
