local set = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Command mode
set('c', 'vh', 'vert help', {noremap})

-- Insert mode
set('i','jk','<ESC>',{})

-- Normal mode
--set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({previewer = false}))<cr>", opts)
set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
set("n", "<leader>fg", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", opts)
set("n", "<leader>fb", "<cmd>lua require'telescope.builtin'.buffers()<cr>", opts)
set("n", "<leader>fh", "<cmd>lua require'telescope.builtin'.help_tags()<cr>", opts)
set("n", "<leader>fd", "<cmd>lua require'telescope.builtin'.diagnostics()<cr>", opts)

set("n", "<leader>hn", "<cmd>Telescope ros node_picker<cr>", opts)
set("n", "<F2>","<cmd>lua require'nvim-tree.api'.tree.toggle()<cr>",opts)
set("n", "<leader>mm","<cmd>Mason<cr>", opts)


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



-- Terminal mode
set("t","<C-h>","<C-\\><C-N><C-w>h", opts)
set("t","<C-j>","<C-\\><C-N><C-w>j", opts)
set("t","<C-k>","<C-\\><C-N><C-w>k", opts)
set("t","<C-l>","<C-\\><C-N><C-w>l", opts)
set("t","<Esc>","<C-\\><C-n>",opts)
