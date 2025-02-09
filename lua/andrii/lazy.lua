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

local IN_WINDOWS = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

require("lazy").setup({
  rocks = {
    hererocks = true
  },
  spec = {

    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      -- or                            , branch = '0.1.x',
      dependencies = { { 'nvim-lua/plenary.nvim' }, { 'nvim-tree/nvim-web-devicons' } }
    },
    {
      'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
    },
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    {
      'windwp/nvim-ts-autotag',
      dependencies = 'nvim-treesitter/nvim-treesitter',
      lazy = false
    },
    {
      "windwp/nvim-autopairs",
      dependencies = 'nvim-treesitter/nvim-treesitter',
      opts = {
        enable_check_bracket_line = false
      }
    },
    {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
      "tpope/vim-fugitive"
    },
    --[[     {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      build = IN_WINDOWS and "make install_jsregexp CC=gcc" or "make install_jsregexp",

      dependencies = {
        { "rafamadriz/friendly-snippets" }
      }
    }, ]]

    --[[     {
      "kmarius/jsregexp",
      build = "rockspec"
    }, ]]
    {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      --[[       build = IN_WINDOWS and "make install_jsregexp CC=gcc" or "make install_jsregexp", ]]

      dependencies = {
        { "rafamadriz/friendly-snippets" }
      }
    },
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v4.x',
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
      "nvimtools/none-ls.nvim",
      dependencies = { 'nvim-lua/plenary.nvim', 'nvimtools/none-ls-extras.nvim' },
    },

    {
      "Mofiqul/vscode.nvim"
    },
    {
      "folke/trouble.nvim",
      opts = {}, -- for default options, refer to the configuration section for custom setup.
      cmd = "Trouble",
      keys = {
        {
          "<leader>xx",
          "<cmd>Trouble diagnostics toggle<cr>",
          desc = "Diagnostics (Trouble)",
        },
        {
          "<leader>xX",
          "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
          desc = "Buffer Diagnostics (Trouble)",
        },
        {
          "<leader>cs",
          "<cmd>Trouble symbols toggle focus=false<cr>",
          desc = "Symbols (Trouble)",
        },
        {
          "<leader>cl",
          "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
          desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
          "<leader>xL",
          "<cmd>Trouble loclist toggle<cr>",
          desc = "Location List (Trouble)",
        },
        {
          "<leader>xQ",
          "<cmd>Trouble qflist toggle<cr>",
          desc = "Quickfix List (Trouble)",
        },
      },
    },
    {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
        require("nvim-surround").setup({
        })
      end
    },
    {
      'numToStr/Comment.nvim',
      opts = {}
    },
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      opts = {
        theme = "vscode", -- "auto" will set the theme dynamically based on the colorscheme
      },
    },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    -- { "junegunn/fzf",                             build = "./install --bin" },
    -- {
    --   "ibhagwan/fzf-lua",
    --   lazy = false,
    --   -- optional for icon support
    --   dependencies = { "nvim-tree/nvim-web-devicons" },
    --
    -- },
    { "gbrlsnchs/telescope-lsp-handlers.nvim" },
    {
      "ggandor/leap.nvim"
    },

    -- Custom Parameters (with defaults)
    {
      "David-Kunz/gen.nvim",
    },
    {
      "olimorris/codecompanion.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "hrsh7th/nvim-cmp",                      -- Optional: For using slash commands and variables in the chat buffer
        "nvim-telescope/telescope.nvim",         -- Optional: For using slash commands
        { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves the default Neovim UI
      },
      config = true
    },
    {
      "ThePrimeagen/refactoring.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      config = function()
        require("refactoring").setup()
      end,
    },
    {
      "nvim-telescope/telescope-file-browser.nvim",
      dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    {
      "pysan3/pathlib.nvim",
      build = "rockspec"
    },
    {
      'mrcjkb/rustaceanvim',
      version = '^5',
      lazy = false,
    },
    { 'echasnovski/mini.nvim', version = '*' },
    { 'pest-parser/pest.vim' }
  },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "vscode" } },
  -- automatically check for plugin updates
  checker = { enabled = false },

})
