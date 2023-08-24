-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { "catppuccin/nvim", as = "catppuccin" }
  use { "rose-pine/neovim", as = "rose-pine" }

  vim.cmd('colorscheme rose-pine')

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require("nvim-ts-autotag").setup({
      })
    end
  }


  use {
    "windwp/nvim-autopairs",
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function() require("nvim-autopairs").setup {} end
  }

  --use('windwp/nvim-ts-autotag')

  -- use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use { 'jparise/vim-graphql' }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required

      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      --{ 'rafamadriz/friendly-snippets' },
    }
  }


  -- use {
  --   'VonHeikemen/lsp-zero.nvim',
  --   branch = 'v1.x',
  --   requires = {
  --     -- LSP Support
  --     { 'neovim/nvim-lspconfig' },             -- Required
  --     { 'williamboman/mason.nvim' },           -- Optional
  --     { 'williamboman/mason-lspconfig.nvim' }, -- Optional

  --     -- Autocompletion
  --     { 'hrsh7th/nvim-cmp' },         -- Required
  --     { 'hrsh7th/cmp-nvim-lsp' },     -- Required
  --     { 'hrsh7th/cmp-buffer' },       -- Optional
  --     { 'hrsh7th/cmp-path' },         -- Optional
  --     { 'saadparwaiz1/cmp_luasnip' }, -- Optional
  --     { 'hrsh7th/cmp-nvim-lua' },     -- Optional

  --     -- Snippets
  --     { 'L3MON4D3/LuaSnip' },             -- Required
  --     { 'rafamadriz/friendly-snippets' }, -- Optional
  --   }
  -- }


  use { 'stevearc/dressing.nvim' }

  use {
    "folke/trouble.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
  }

  use { 'junegunn/fzf', run = './install --bin', }

  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  use { 'junegunn/fzf.vim' }

  use 'mfussenegger/nvim-jdtls'

  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = 'nvim-lua/plenary.nvim',
  }

  --use { 'neoclide/coc.nvim',
  --  branch = "release",
  --}



  -- use { 'neoclide/coc.nvim', branch = 'release' }



  -- use {'dart-lang/dart-vim-plugin'}
  -- use {'thosakwe/vim-flutter'}

  -- use {
  --   'akinsho/flutter-tools.nvim',
  --   requires = {
  --     'nvim-lua/plenary.nvim',
  --     'stevearc/dressing.nvim', -- optional for vim.ui.select
  --   },
  -- }
end)
