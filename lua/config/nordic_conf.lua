local M = {}

function M.setup()
    require('nordic').colorscheme({
        underline_option = 'none',
        italic = false,
        italic_comment = true
    })
end

return M
