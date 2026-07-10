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
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

-- LazyVim setup
require('config.lazy')

-- neovim-node-host via pnpm
local neovim_node_host_script = vim.fn.readfile(vim.fn.exepath("neovim-node-host"))
vim.g.node_host_prog=neovim_node_host_script[#neovim_node_host_script]:match("cmd%-shim%-target=(.+)$")

-- colorscheme
vim.cmd.colorscheme 'catppuccin-nvim'

require('nvim-tree').setup({})

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'toggle <e>xplorer' })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

