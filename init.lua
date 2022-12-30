-- Set colorscheme

vim.g.mapleader = " "

local o = vim.opt

o.clipboard = 'unnamedplus'         -- Share clipboard with system
o.relativenumber = true             -- Relative line numbers in file
o.linebreak = true                  -- Word wrapping
o.number = true                     -- Current line has line number
o.autoindent = true                 -- Auto-indentation when pressing return
o.smartindent = true                -- Automatic indentation associated with prog language (e.g. after {})
o.softtabstop = 4                   -- A tab is 4 spaces
o.shiftwidth = 4                    -- Autoindent indents to a tab (so 4 spaces)
o.expandtab = true                  -- A tab is 4 spaces... in insert mode
o.splitbelow = true                 -- Split below when splitting horizontally
o.splitright = true                 -- Split right when splitting veritcally
o.ignorecase = true                 -- Ignore case when doing a search
o.hlsearch = false                  -- Remove automatic highlighting 
o.completeopt = {'menu', 'menuone', 'noselect'} -- Behaviour of autocomplete window : show menu for autocomplete and select nothing without user input
o.termguicolors = true
o.cmdheight = 0

require('packer-plugin')
require('remap/remaps')
