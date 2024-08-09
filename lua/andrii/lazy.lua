-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
--vim.g.mapleader = " "
--vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      -- or                            , branch = '0.1.x',
      dependencies = { { 'nvim-lua/plenary.nvim' }, { 'nvim-tree/nvim-web-devicons' } }
    },
    {
      'nvim-treesitter/nvim-treesitter',  build = ':TSUpdate'
    },
    {
      'windwp/nvim-ts-autotag',
      dependencies = 'nvim-treesitter/nvim-treesitter',
      opts = {}
    },
    {
      "windwp/nvim-autopairs",
      dependencies = 'nvim-treesitter/nvim-treesitter',
      opts = {}
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
      "tpope/vim-fugitive"
    },
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
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
    },
    { 'stevearc/dressing.nvim' },

    -- { 'junegunn/fzf', build = './install --bin', },
    -- { 'ibhagwan/fzf-lua',
    --     -- optional for icon support
    --     dependencies = { 'nvim-tree/nvim-web-devicons' }
    --   }
    {
      "jose-elias-alvarez/null-ls.nvim",
      dependencies = 'nvim-lua/plenary.nvim',
    },

    {
      "Mofiqul/vscode.nvim"
    }

  },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "vscode" } },
  -- automatically check for plugin updates
  checker = { enabled = true },

})
