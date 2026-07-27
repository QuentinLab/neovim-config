local M = {}

-- Mappings.
local opts = { noremap=true, silent=true }

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    --local bufopts = { noremap=true, silent=true, buffer=bufnr }
    --vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    --vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    --vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    --vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    --vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    --vim.keymap.set('n', '<space>K', vim.lsp.buf.signature_help, bufopts)
    --vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
    ---- vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
    --vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    --vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    ---- vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
    --vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    --vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    --vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    --vim.keymap.set('n', '<space>fa', vim.lsp.buf.code_action,opts)
    --vim.keymap.set('n', '<space>df', vim.lsp.buf.hover,opts)

end

-- this part is telling Neovim to use the lsp server
local servers = {'pyright','clangd','tsserver','angularls','html'}


vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        require('lsp_signature').on_attach({}, args.buf)
    end,
})

function M.setup()

    require("lsp_signature").setup(
    {
        bind = true,
        hint_enable = true,
        floating_window = true,
        floating_window_above_cur_line = true,
        handler_opts = {
            border = "rounded",
        },
        max_height = 12,
        max_width = 80,
        doc_lines = 10,
        always_trigger = true,
        hi_parameter = "LspSignatureActiveParameter",
        close_timeout = 2000,
        hint_inline = function() return true end
    })

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
    --local runtime_path = vim.split(package.path, ';')
    --table.insert(runtime_path, 'lua/?.lua')
    --table.insert(runtime_path, 'lua/?/init.lua')

    --require("lspconfig").lua_ls.setup(
    --{
    --    on_attach = on_attach,
    --    settings = {
    --        Lua = {
    --            diagnostics = {
    --                globals = {'vim'},
    --            },
    --            workspace = {
    --                library = vim.api.nvim_get_runtime_file("",true),
    --                checkThirdParty = false,
    --            },
    --            runtime = {
    --                version = 'LuaJIT',
    --                path = runtime_path,
    --            },
    --            telemetry = {
    --                enable = false,
    --            },
    --        },
    --    },
    --    flags = {
    --      debounce_text_changes = 150,
    --    },
    --    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    --})

    --for _, lsp in pairs(servers) do
    --    require('lspconfig')[lsp].setup {
    --        on_attach = on_attach,
    --        flags = {
    --          debounce_text_changes = 150,
    --        },
    --        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    --    }
    --end
    ---- this is for diagnositcs signs on the line number column
    ---- use this to beautify the plain E W signs to more fun ones
    ---- !important nerdfonts needs to be setup for this to work in your terminal
    --local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
    --for type, icon in pairs(signs) do
    --    local hl = "DiagnosticSign" .. type
    --    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
    --end
end


return M
