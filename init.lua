-- require("vim._core.ui2").enable({})
vim.g.mapleader = " "
vim.g.loaded_netrw = 1              -- Disable netrw as we are going to you nvim-tree
vim.g.loaded_netrwPlugin = 1        -- Disable netrw as we are going to you nvim-tree

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
--o.hlsearch = false                  -- Remove automatic highlighting 
o.completeopt = {'menu', 'menuone', 'noselect'} -- Behaviour of autocomplete window : show menu for autocomplete and select nothing without user input
o.termguicolors = true
o.cmdheight = 0
o.foldenable = false

-- LSP setups
vim.diagnostic.config({virtual_text = true}) -- Enable inline diagnostics from LSP

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "",
        },
        linehl = {
                [vim.diagnostic.severity.ERROR] = "ErrorMsg",
                [vim.diagnostic.severity.WARN] = "WarningMsg",
                [vim.diagnostic.severity.INFO] = "DiagnosticInfo",
                [vim.diagnostic.severity.HINT] = "DiagnosticHint",
        },
        numhl = {
                [vim.diagnostic.severity.ERROR] = "ErrorMsg",
                [vim.diagnostic.severity.WARN] = "WarningMsg",
                [vim.diagnostic.severity.INFO] = "DiagnosticInfo",
                [vim.diagnostic.severity.HINT] = "DiagnosticHint",
        },
    }
})

require('remap/remaps')
require('pack')
