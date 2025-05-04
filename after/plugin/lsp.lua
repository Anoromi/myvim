--local lsp = require("lsp-zero")
local config = require("andrii.config")


--lsp.ensure_installed({
--  --  'tsserver',
--  'eslint',
--  'lua_ls',
--  'rust_analyzer',
--})

--lsp.on_attach(function(client, bufnr)
--  lsp.default_keymaps({ buffer = bufnr })
--end)

local lsp_attach = function(client, bufnr)
	--lsp.default_keymaps({ buffer = bufnr })
	local opts = { buffer = bufnr }

	vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
	vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
	vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
	vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
	vim.keymap.set('n', '<leader>go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
	vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
	vim.keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
	vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
	vim.keymap.set({ 'n', 'x', 'v' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
	vim.keymap.set({ 'n', 'v', 'x' }, '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
	-- vim.keymap.set('v', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
	vim.keymap.set('n', '<C-.>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
	vim.keymap.set("n", "<A-s>", vim.lsp.buf.signature_help, { desc = "Signature hint" })
	vim.keymap.set("i", "<A-s>", vim.lsp.buf.signature_help, { desc = "Signature hint" })
	--vim.keymap.set("i", "<C-S>", vim.lsp.buf.signature_help, { desc="Signature hint"})
end

vim.api.nvim_create_autocmd('LspAttach', {
	desc = "LSP actions",
	callback = lsp_attach
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- lsp.extend_lspconfig({
--   capabilities = require("cmp_nvim_lsp").default_capabilities(),
--   lsp_attach = lsp_attach,
--   float_border = "rounded",
--   sign_text = true
-- })

--lsp.skip_server_setup({ 'jdtls',
--  'phpactor',
--  --'intelephense'
--})

local lsp_config = config.lsp or {}
local skip_server_setup = lsp_config.skip_server_setup or {}
require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { 'ts_ls', 'rust_analyzer', 'lua_ls' },
	handlers = {
		jdtls = function(_) end,
		phpactor = function(_) end,
		--intelephense
		function(server_name)
			require('lspconfig')[server_name].setup({
				capabilities = lsp_capabilities
			})
		end,

		rust_analyzer = function(_) end,
		--eslint = lsp.noop,
		eslint = function()
			if skip_server_setup.eslint == nil then
				require('lspconfig').eslint.setup({})
			end
		end,
		ts_ls = function()
			local node_modules = require('os').getenv("GLOBAL_NODE_MODULES")
			local Path = require("pathlib")
			local plugin = Path(node_modules) / "@vue" / "typescript-plugin"
			if node_modules == nil then
				vim.notify(
					"No global node modules (GLOBAL_NODE_MODULES) found, lspconfig won't be able to use @vue/typescript-plugin",
					vim.log.levels.WARN)
			end

			require('lspconfig').ts_ls.setup({
				on_init = function(client)
					--client.server_capabilities.documentFormattingProvider = false
					--client.server_capabilities.documentFormattingRangeProvider = false
				end,
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							--location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
							location = tostring(plugin),
							languages = { "javascript", "typescript", "vue" },
						},
					},
				},
				filetypes = {
					"javascript",
					"typescript",
					"vue",
					"javascriptreact",
					"typescriptreact",
				},
			})
		end,

		['pest_ls'] = function()
			require('pest-vim').setup {}
		end,

		tailwindcss = function()
			require('lspconfig').tailwindcss.setup({
				settings = {
					tailwindCSS = {
						lint = {
							--cssConflict = "ignore"
						},
						classAttributes = { "class", "className", "ngClass", ".*Styles", '.*Class' },
						experimental = {
							classRegex = {
								'tw([^])', 'tw="([^"])', 'tw={"([^"}])',
								"clsx\\(([^)]*)\\)",
								"cn\\(([^)]*)\\)",
								"cva\\(([^)]*)\\)",
								"a*Class='([^']+)'"
								-- 'tw\.\w+([^])',
								--'tw\(.?\)([^])',
							},
						},
					},
				},
			})
		end,

		cssls = function()
			require('lspconfig').cssls.setup({
				on_init = function(client)
					--client.server_capabilities.documentFormattingProvider = false
					--client.server_capabilities.documentFormattingRangeProvider = false
				end,
			})
		end,

		cssmodules_ls = function()
			require 'lspconfig'.cssmodules_ls.setup {
				on_attach = function(client)
					client.server_capabilities.definitionProvider = false
				end,
			}
		end,

		jsonls = function()
			require('lspconfig').jsonls.setup({
				on_init = function(client)
					client.server_capabilities.documentFormattingProvider = false
					client.server_capabilities.documentFormattingRangeProvider = false
				end,
			})
		end


		-- volar = function()
		--   require('lspconfig').volar.setup {}
		-- end
	}
})

--lsp.setup()


--lsp.new_server({
--  name = 'ts',
--  cmd = { 'typescript-language-server', "--stdio" },
--  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
--  root_dir = function()
--    return lsp.dir.find_first({ 'tsconfig.json', '.git' })
--  end
--})

--lsp.new_server({
--  name = 'volar-builtin',
--  cmd = { 'vue-language-server', "--stdio" },
--  filetypes = {
--    'vue'
--    --'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'
--  },
--  root_dir = function()
--    return lsp.dir.find_first({ 'tsconfig.json', '.git' })
--  end
--})

--lsp.new_server({
--  name = 'phpcs',
--  cmd = { 'php-cs-fixer' },
--  filetypes = { 'php' },
--  root_dir = function()
--    return lsp.dir.find_first({ 'some-config-file' })
--  end
--})


local cmp = require('cmp')
--local cmp_action = require('lsp-zero').cmp_action()

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = cmp.mapping.preset.insert({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	--['<C-h>'] = cmp.mapping.complete(),
	['<C-Space>'] = cmp.mapping.complete(),
	--['<C-Space>'] = cmp.mapping.complete(),
	--['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { "i", "s", "c" }),
	['<CR>'] = cmp.mapping.confirm({ select = true }),

	-- TODO I never use this but maybe they might be useful. Commented during lsp-zero migration
	--['<C-f>'] = cmp_action.luasnip_jump_forward(),
	--['<C-b>'] = cmp_action.luasnip_jump_backward(),
})


--lsp.setup_nvim_cmp({
--  mapping = cmp_mappings
--})


cmp.setup({
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
		{ name = 'luasnip' },
	},
	mapping = cmp_mappings,
	--completion = {
	---  autocomplete = true
	---},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})



--const Path = require("pathlib")

require('luasnip.loaders.from_vscode').lazy_load({
	paths = vim.fn.stdpath('config') .. '/snippets'
})




local null_ls = require('null-ls')

null_ls.setup({
	sources = {
		-- Replace these with the tools you have installed
		-- make sure the source name is supported by null-ls
		-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
		-- null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.prettierd,
		--require("none-ls.formatting.rustfmt"),
		--
		--require("none-ls.code_actions.eslint"),
		--require("none-ls.diagnostics.eslint"),
		--require("none-ls.formatting.eslint"),
		require("none-ls.code_actions.eslint_d"),
		require("none-ls.diagnostics.eslint_d"),
		require("none-ls.formatting.eslint_d"),

		--null_ls.builtins.diagnostics.eslint,
		--null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.phpcsfixer,
		null_ls.builtins.formatting.nixpkgs_fmt,
		--null_ls.builtins.diagnostics.psalm,
		null_ls.builtins.diagnostics.phpstan,
		-- require("none-ls.formatting.rustfmt")
	}
})


--vim.keymap.set("n", "<leader>fm", ":LspZeroFormat<CR>")
vim.keymap.set({ "n", "x", "v" }, "<A-f>", ":lua vim.lsp.buf.format({ timeout_ms = 10000})<CR>")

vim.g.rustaceanvim = {
	-- Plugin configuration
	tools = {
	},
	-- LSP configuration
	server = {
		-- default_settings = {
		--   -- rust-analyzer language server configuration
		--   ['rust-analyzer'] = {
		--   },
		-- },
	},
	-- DAP configuration
	-- dap = {
	-- },
}


--for _, method in ipairs({ 'textDocument/diagnostic', 'workspace/diagnostic' }) do
--    local default_diagnostic_handler = vim.lsp.handlers[method]
--    vim.lsp.handlers[method] = function(err, result, context, config)
--        if err ~= nil and err.code == -32802 then
--            return
--        end
--        return default_diagnostic_handler(err, result, context, config)
--    end
--end


--require('lspconfig').tsserver.setup({
--  on_init = function(client)
--    client.server_capabilities.documentFormattingProvider = false
--    client.server_capabilities.documentFormattingRangeProvider = false
--  end,
--
--  init_options = {
--    plugins = {
--      {
--        name = "@vue/typescript-plugin",
--        location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
--        languages = { "javascript", "typescript", "vue" },
--      },
--    },
--  }
--})
--
--require('lspconfig').tailwindcss.setup({
--  settings = {
--    tailwindCSS = {
--      lint = {
--        --cssConflict = "ignore"
--      },
--      classAttributes = { "class", "className", "ngClass", ".*Styles", '.*Class' },
--      experimental = {
--        classRegex = {
--          'tw([^])', 'tw="([^"])', 'tw={"([^"}])',
--          "clsx\\(([^)]*)\\)",
--          "cn\\(([^)]*)\\)",
--          "cva\\(([^)]*)\\)",
--          "a*Class='([^']+)'"
--          -- 'tw\.\w+([^])',
--          --'tw\(.?\)([^])',
--        },
--      },
--    },
--  },
--})
--
--require('lspconfig').cssls.setup({
--  on_init = function(client)
--    client.server_capabilities.documentFormattingProvider = false
--    client.server_capabilities.documentFormattingRangeProvider = false
--  end,
--})
--
--require('lspconfig').volar.setup {
--  filetypes = { 'vue' },
--  init_options = {
--    vue = {
--      hybridMode = false
--    }
--  }
--}
