-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

	use "EdenEast/nightfox.nvim"

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use "savq/melange-nvim"

    use 'WhoIsSethDaniel/lualine-lsp-progress.nvim'

	use('nvim-treesitter/playground')

    use('nvim-lualine/lualine.nvim')

	use('mbbill/undotree')

	use('voldikss/vim-floaterm')

    use 'nvim-tree/nvim-web-devicons'

    use 'prichrd/netrw.nvim'

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

    use 'terrortylor/nvim-comment'
    require('nvim_comment').setup()

    use {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {
            }
        end
    }

end)
