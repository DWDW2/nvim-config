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

	use ('neovim/nvim-lspconfig')  
	use ('hrsh7th/nvim-cmp') 
	use ('hrsh7th/cmp-nvim-lsp') 
	use ('williamboman/mason.nvim')
	use ('williamboman/mason-lspconfig.nvim')
	use ('L3MON4D3/LuaSnip')


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
