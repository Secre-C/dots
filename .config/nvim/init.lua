-- options
vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = true  -- Use relative line numbers
vim.opt.tabstop = 4            -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4         -- Size of an indent
vim.opt.expandtab = true       -- Convert tabs to spaces
vim.opt.termguicolors = true   -- Enable 24-bit RGB colors
vim.opt.clipboard = "unnamedplus" -- Paste to clipboard
vim.keymap.set({'n', 'i', 'v'}, '<F1>', '<nop>') -- disable f1 help

-- keybinds
vim.g.mapleader = " "

