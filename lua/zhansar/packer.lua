vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',  
		config = function()
			require('nvim-treesitter.configs').setup {
				ensure_installed = {
					"c", "lua", "vim", "vimdoc", "query",
					"markdown", "markdown_inline", "typescript",
					"javascript", "rust", 
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					disable = function(lang, buf)
						local max_filesize = 100 * 1024 -- 100 KB
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
					additional_vim_regex_highlighting = false,
				},
			}
		end
	}
	use { "rose-pine/neovim", name = "rose-pine" }
  use ('theprimeagen/harpoon')
  use ('wakatime/vim-wakatime')

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}

	use "folke/tokyonight.nvim"
	use ('neovim/nvim-lspconfig')  
	use ('hrsh7th/nvim-cmp') 
	use ('hrsh7th/cmp-nvim-lsp') 
	use ('williamboman/mason.nvim')
	use ('williamboman/mason-lspconfig.nvim')
	use ('L3MON4D3/LuaSnip') 
	use({
		"roobert/tailwindcss-colorizer-cmp.nvim",
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end
	})
	
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
