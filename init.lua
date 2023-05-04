-- Enable syntax highlighting
vim.cmd('syntax on')

-- Set number
vim.opt.number = true

-- Set tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Map Ctrl-s to save
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})

-- Set leader key to comma
vim.g.mapleader = ","

-- Packer configuration
vim.cmd('packadd packer.nvim')
require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Add your other plugins here
  use 'morhetz/gruvbox'
  
  -- CoC plugin
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'tomtom/tcomment_vim'

  -- Add tree-sitter plugin
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Add NERDTree plugin
  use 'preservim/nerdtree'
end)

-- Colorscheme gruvbox
vim.cmd('colorscheme gruvbox')

-- Set the background color to dark
vim.opt.background = 'dark'

-- Customize the contrast level
vim.g.gruvbox_contrast_dark = 'hard'

-- Disable italicizing of comments
vim.g.gruvbox_italicize_comments = 0

-- Disable bolding of status line
vim.g.gruvbox_bold_statusline = 0

-- Disable autosuggestion
vim.opt.completeopt:remove("menu")

-- Set autoindent
vim.opt.autoindent = true

-- Enable filetype indentation
vim.cmd('filetype indent on')

-- Enable expandtab
vim.opt.expandtab = true

-- Configure tree-sitter
require('nvim-treesitter.configs').setup {
  ensure_installed = "all", -- or you can use a list of languages you want to support, e.g., {"javascript", "python", "lua"}
  highlight = {
    enable = true,
  },
}

-- Keybinding to toggle NERDTree
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeToggle<CR>', {noremap = true, silent = true})

