local opt = vim.opt

-- line number
opt.number = true
opt.numberwidth = 4

-- cursor
opt.cursorline = true
opt.guicursor = ""

-- tab and indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- color
opt.termguicolors = true
opt.winblend = 0
opt.pumblend = 0

-- search
opt.ignorecase = true
opt.smartcase = true

-- view
opt.wrap = true

-- files
opt.backup = false
opt.writebackup	= false
opt.swapfile = false
opt.undofile = false
opt.autoread = true

-- color scheme
vim.g.nord_disable_background = true
vim.g.nord_italic = false
vim.g.nord_bold = false
vim.cmd[[colorscheme nord]]