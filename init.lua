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
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/tokyonight.nvim",
  "nvim-tree/nvim-tree.lua", -- File explorer
  "nvim-treesitter/nvim-treesitter", -- Better syntax highlighting
})
