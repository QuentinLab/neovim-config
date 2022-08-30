return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	use {
		'andersevenrud/nordic.nvim',
		config = function()
                    require('config/nordic_conf').setup()
		end
	}

        use {
                'nvim-lualine/lualine.nvim',
                requires = {'kyazdani42/nvim-web-devicons', opt = true },
                config = function()
                    require('config/lualine_conf').setup()
                end
        }

        use {
                'nvim-telescope/telescope.nvim', tag='0.1.0',
                requires = { {'nvim-lua/plenary.nvim'} }
        }
        use {
                'kyazdani42/nvim-tree.lua',
                requires = {'kyazdani42/nvim-web-devicons'},
                config = function()
                    require('nvim-tree').setup()
                end
        }

end)
