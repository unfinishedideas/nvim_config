-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- color schemes
    use{
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd('colorscheme rose-pine-main')
        end
        -- rose-pine-main <- preferred, rose-pine-moon, rose-pine-dawn
    }
    use{
        "folke/tokyonight.nvim",
        as = "tokyonight",
        -- tokyonight-night, tokyonight-storm, tokyonight-day, tokyonight-moon <- preferred
    }
    use{
        "rebelot/kanagawa.nvim",
        as = "kanagawa",
        --kanagawa-wave <- preferred, kanagawa-dragon, kanagawa-lotus
    }
    use{
        "catppuccin/nvim",
        as = "catppuccin",
        -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha <- preferred
    }
    use{
        "sainnhe/everforest",
        as = "everforest",
        --
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use( 'nvim-treesitter/playground')

    use "nvim-lua/plenary.nvim"

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
end)
