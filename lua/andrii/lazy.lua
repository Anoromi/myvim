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
		{ 'neovim/nvim-lspconfig' },           -- Required
		{ 'williamboman/mason.nvim' },         -- Optional
		{ 'williamboman/mason-lspconfig.nvim' }, -- Optional
		{ 'hrsh7th/nvim-cmp' },                -- Required
		{ 'hrsh7th/cmp-nvim-lsp' },            -- Required
		{ 'L3MON4D3/LuaSnip' },                -- Required

		{ 'hrsh7th/cmp-buffer' },
		{ 'hrsh7th/cmp-path' },
		{ 'saadparwaiz1/cmp_luasnip' },
		{
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v4.x',
			dependencies = {
				-- LSP Support
				{ 'neovim/nvim-lspconfig' },         -- Required
				{ 'williamboman/mason.nvim' },       -- Optional
				{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

				-- Autocompletion
				{ 'hrsh7th/nvim-cmp' }, -- Required
				{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
				{ 'L3MON4D3/LuaSnip' }, -- Required

				{ 'hrsh7th/cmp-buffer' },
				{ 'hrsh7th/cmp-path' },
				{ 'saadparwaiz1/cmp_luasnip' },
				--{ 'rafamadriz/friendly-snippets' },
			}
		},
		{ 'saghen/blink.cmp', version = '1.*' },
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
				"hrsh7th/nvim-cmp",                  -- Optional: For using slash commands and variables in the chat buffer
				"nvim-telescope/telescope.nvim",     -- Optional: For using slash commands
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
		{ 'echasnovski/mini.nvim',   version = '*' },
		{ 'pest-parser/pest.vim' },
		{ 'augmentcode/augment.vim', enabled = true },

		{
			"yetone/avante.nvim",
			event = "VeryLazy",
			version = false, -- Never set this value to "*"! Never!
			opts = {
				-- add any opts here
				-- for example
				provider = "gemini",
				gemini = {
					-- endpoint = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent",
					model = "gemini-2.0-flash", -- your desired model (or use gpt-4o, etc.)
					timeout = 30000,       -- Timeout in milliseconds, increase this for reasoning models
					temperature = 0,
					max_tokens = 8192,     -- Increase this to include reasoning tokens (for reasoning models)
					--reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
				},
			},
			-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
			build = "make",
			-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
			dependencies = {
				"nvim-treesitter/nvim-treesitter",
				"stevearc/dressing.nvim",
				"nvim-lua/plenary.nvim",
				"MunifTanjim/nui.nvim",
				--- The below dependencies are optional,
				"echasnovski/mini.pick",     -- for file_selector provider mini.pick
				"nvim-telescope/telescope.nvim", -- for file_selector provider telescope
				"hrsh7th/nvim-cmp",          -- autocompletion for avante commands and mentions
				"ibhagwan/fzf-lua",          -- for file_selector provider fzf
				"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
				"zbirenbaum/copilot.lua",    -- for providers='copilot'
				{
					-- support for image pasting
					"HakonHarnes/img-clip.nvim",
					event = "VeryLazy",
					opts = {
						-- recommended settings
						default = {
							embed_image_as_base64 = false,
							prompt_for_file_name = false,
							drag_and_drop = {
								insert_mode = true,
							},
							-- required for Windows users
							use_absolute_path = true,
						},
					},
				},
				{
					-- Make sure to set this up properly if you have lazy=true
					'MeanderingProgrammer/render-markdown.nvim',
					opts = {
						file_types = { "markdown", "Avante" },
					},
					ft = { "markdown", "Avante" },
				},
			},
		}
	},

	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "vscode" } },
	-- automatically check for plugin updates
	checker = { enabled = false },

})
