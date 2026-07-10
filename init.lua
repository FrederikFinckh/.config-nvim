vim.g.loaded_netrw = 1 -- netrw is vims builting file explorer
vim.g.loaded_netwrPlugin = 1 -- we use nvim-tree

vim.g.mapleader = ' '
vim.opt.nu = true -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative line numbers (super useful for jumping!)
vim.opt.tabstop = 2 -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2 -- Number of spaces to use for each step of indentation
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smartly indent a new line

-- A basic keymap to save the file
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })

-- LazyVim setup
require('config.lazy')

require("nvim-tree").setup()

-- colorscheme
vim.cmd.colorscheme "catppuccin-nvim"


