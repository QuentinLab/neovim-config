local M = {}


function M.setup()
    require('catppuccin').setup {
        flavour = "mocha"
    }
    vim.api.nvim_command "colorscheme catppuccin"
    integrations = {
        lualine = true
    }

end

return M
