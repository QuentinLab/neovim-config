local M = {}

local function NoGitRepo()
    return "No Repo"
end

function M.setup()
    require('lualine').setup(
        {
            options = {
                icons_enable = true,
                theme = 'nord',
                component_separators = { left = '', right = ''},
                section_separators = {left = '', right = ''},
                disabled_filetypes = {
                    statusline = {},
                    winbar = {}
                },
                ignore_focus = {},
                always_divide_middle=true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {  
                 lualine_a = {'mode'},
                 lualine_b = {'branch', 'diff', 'diagnostics'},
                 lualine_c = {'filename'},
                 lualine_x = {'encoding', 'fileformat', 'filetype'},
                 lualine_y = {'progress'},
                 lualine_z = {'location'}
            },
            inactive_sections = {
                 lualine_a = {'mode'},
                 lualine_b = {'branch', 'diff', 'diagnostics'},
                 lualine_c = {'filename'},
                 lualine_x = {'encoding', 'fileformat', 'filetype'},
                 lualine_y = {'progress'},
                 lualine_z = {'location'}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    )
end

return M