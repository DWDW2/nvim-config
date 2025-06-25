vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use "catppuccin/nvim"
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use ('theprimeagen/harpoon')
  use ('wakatime/vim-wakatime')

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}


	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

	use({
		"NTBBloodbath/galaxyline.nvim",
		config = function()
			require("galaxyline.themes.eviline")
		end,
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	})

end) 
