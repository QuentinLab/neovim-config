return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

        
        -- Status line in neovim
        use {
                'nvim-lualine/lualine.nvim',
                requires = {'kyazdani42/nvim-web-devicons', opt = true },
                config = function()
                    require('config/lualine_conf').setup()
                end
        }
	
        -- colorscheme
        use {
            'catppuccin/nvim',
            as = "catpuccin",
            config = function()
                require('config/catpuccin_conf').setup()
            end
        }
        
        -- Fuzzy finder (find file, search, etc..)
        use {
                'nvim-telescope/telescope.nvim', tag='0.1.0',
                requires = { {'nvim-lua/plenary.nvim'} }
        }
        
        -- Enable file-tree view via toggle 
        use {
                'kyazdani42/nvim-tree.lua',
                requires = {'kyazdani42/nvim-web-devicons'},
                config = function()
                    require('nvim-tree').setup()
                end
        }

        -- Syntax highlighting
        use {
            'nvim-treesitter/nvim-treesitter',
            run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
            config = function()
                require('config/nvim-treesitter_conf').setup()
            end
        }

        -- LSP, DAP, and external thirdy party software installer
        use {
            'williamboman/mason.nvim',
            config = function()
                require('config/mason_conf').setup()
            end
        }

        use {
            'williamboman/mason-lspconfig.nvim',
            config = function()
                require("mason-lspconfig").setup()
            end,
            after = 'mason.nvim'
        }

        -- LSP configuration 
        use {
            'neovim/nvim-lspconfig',
            config = function()
                require('config/lsp_conf').setup()
            end,
            after = 'mason-lspconfig.nvim',
            requires = "ray-x/lsp_signature.nvim",
        }

        -- Auto complete
        use {
            'hrsh7th/nvim-cmp',
            config = function()
                require("config/nvim-cmp_conf").setup()
            end,
            requires = 
            {
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-nvim-lua",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-cmdline",
                "ray-x/cmp-treesitter",
                "saadparwaiz1/cmp_luasnip",
                {
                    "L3MON4D3/LuaSnip",
                    config = function()
                        require("config/luasnip_conf").setup()
                    end
                },
                "rafamadriz/friendly-snippets",
            },
        }

        use {
            'mfussenegger/nvim-dap',
            event = "BufReadPre",
            module = { "dap" },
            wants = { "nvim-dap-virtual-text", "nvim-dap-ui", "nvim-dap-python" },
            requires = {
                "theHamsta/nvim-dap-virtual-text",
                "rcarriga/nvim-dap-ui",
                "mfussenegger/nvim-dap-python",
                "nvim-telescope/telescope-dap.nvim",
            },
            config = function()
                require("config/dap_conf").setup()
            end,
        }

        use 
        {
            'simrat39/rust-tools.nvim',
            config = function()
                require("config/rust_conf").setup()
            end,
            after = 'nvim-lspconfig',
        }

end)
