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
set("n", "<F2>","<cmd>lua require'nvim-tree.api'.tree.toggle()<cr>",opts)
