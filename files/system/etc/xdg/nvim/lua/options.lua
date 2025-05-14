-- use `:h <option>` to figure out meaning
vim.opt.clipboard = "unnamedplus" -- use system keyboard
vim.opt.completeopt = { "menu", "noinsert", "noselect" }
vim.opt.mouse = "a" -- supposedly to allow the mouse to be used in nvim

-- Tab settings
vim.opt.tabstop = 4 -- set number of visual spaces per \t (Tab)
vim.opt.softtabstop = 4 -- set number of space in tab when editing
vim.opt.shiftwidth = 4 -- insert 4 spaces on a tab
vim.opt.expandtab = false -- for python apparently, treat tabs as spaces

-- UI config
vim.opt.number = true -- show the absolute number
vim.opt.relativenumber = true -- to add numbers to each line on the left side (line numbers?)
vim.opt.cursorline = true -- highlights the line where the cursor is
vim.opt.splitbelow = true -- sets new splits to be opened below
vim.opt.splitright = true -- sets new splits to be opened to the right
vim.opt.termguicolors = true -- enables 24-bit RGB color in Terminal UI
-- vim.opt.showmode = false		-- removes the --INSERT-- like UI at the bottom

-- Search settings
vim.opt.incsearch = true -- search as characters are entered
--vim.opt.hlsearch = false		-- do not highlight matches
vim.opt.ignorecase = true -- ignore cases by default
vim.opt.smartcase = true -- when capitalized, be case sensitive
