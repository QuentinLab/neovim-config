local M = {}


function M.setup()
    require('catppuccin').setup {
        flavour = "mocha"
    }
    integrations = {
    }
    vim.api.nvim_command "colorscheme catppuccin"

end

return M
