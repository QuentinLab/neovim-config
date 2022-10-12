local M = {}


function M.setup()

    local dap = require('dap')

    dap.adapters.cppdbg = {
        id = 'cppdbg',
        type = 'executable',
        command = '/home/quentin/.local/share/nvim/mason/bin/OpenDebugAD7',
    }

    dap.configurations.cpp = {
        {
            name = "Launch file",
            type = "cppdbg",
            request = "launch",
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd= function()
                print(vim.fn.getcwd())
                return vim.fn.getcwd()
            end,
            stopAtEntry = true,
        },
    }

end

return M
