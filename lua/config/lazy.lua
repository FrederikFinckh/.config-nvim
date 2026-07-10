-- LazyVim setup
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-fugitive', -- git integration
  'neovim/nvim-lspconfig', -- lspconfig
  'catppuccin/nvim', -- theme
  'nvim-tree/nvim-tree.lua', -- File explorer
  'nvim-treesitter/nvim-treesitter', -- Better syntax highlighting
  'nvim-tree/nvim-web-devicons', -- nerd font icon support
  { 'nvim-mini/mini.icons', version = '*' }, -- more icons (recommended by which-key)

  --telescope with native install for performance
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- optional but recommended
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
  },

  -- show keybindings
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  }
})
