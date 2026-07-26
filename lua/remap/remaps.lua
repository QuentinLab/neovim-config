local set = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Command mode
set('c', 'vh', 'vert help', opts)

-- Insert mode
set('i','jk','<ESC>',{})

-- Normal mode
--set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({previewer = false}))<cr>", opts)
set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
set("n", "<leader>fg", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)
set("n", "<leader>fb", "<cmd>lua require'telescope.builtin'.buffers()<cr>", opts)
set("n", "<leader>fh", "<cmd>lua require'telescope.builtin'.help_tags()<cr>", opts)
set("n", "<leader>fd", "<cmd>lua require'telescope.builtin'.diagnostics()<cr>", opts)
set("n", "<leader>fc", "<cmd>lua require'telescope.builtin'.colorscheme()<cr>", opts)

set("n", "<F2>","<cmd>lua require'nvim-tree.api'.tree.toggle()<cr>",opts)


    -- Switch between windows

set("n","<C-h>","<C-w>h", opts)
set("n","<C-j>","<C-w>j", opts)
set("n","<C-k>","<C-w>k", opts)
set("n","<C-l>","<C-w>l", opts)

-- Debug
set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
set("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
set("n", "<F4>", "<cmd>lua require'dap'.disconnect()<cr>", opts)
set("n", "<F8>", "<cmd>lua require'dap'.step_into()<cr>", opts)
set("n", "<F9>", "<cmd>lua require'dap'.step_over()<cr>", opts)
set("n", "<F10>", "<cmd>lua require'dap'.step_out()<cr>", opts)
set("n", "<leader>dp", "<cmd>lua require'dap'.pause()<cr>", opts)
set("n", "<F3>", "<cmd>lua require'dapui'.toggle()<cr>", opts)
set("n", "<F10>", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
set("n", "<F12>", "<cmd>lua require'dap'.close()<cr>", opts)


-- LSP
set('n', 'K',               "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
set('n', 'gd',            "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
set('n', 'gi',            "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
set('n', 'gr',            "<cmd>lua vim.lsp.buf.references()<cr>", opts)
set('n', 'gD',            "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
set('n', '[d',            "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
set('n', ']d',            "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
set('n', 'gt',            "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
set('n', '<space>f',      "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
set('n', '<space>K',      "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
set('n', '<space>e',      "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
set('n', '<space>rn',     "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
set('n', '<space>ca',     "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
set('n', '<space>df',     "<cmd>lua vim.lsp.buf.hover()<cr>",opts)


-- Terminal mode
set("t","<C-h>","<C-\\><C-N><C-w>h", opts)
set("t","<C-j>","<C-\\><C-N><C-w>j", opts)
set("t","<C-k>","<C-\\><C-N><C-w>k", opts)
set("t","<C-l>","<C-\\><C-N><C-w>l", opts)
set("t","<Esc>","<C-\\><C-n>",opts)
