
local lsp = require("lsp-zero").preset("recommended")


lsp.ensure_installed({
  --  'tsserver',
  'eslint',
  'lua_ls',
  'rust_analyzer',
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

lsp.skip_server_setup({ 'jdtls' })





lsp.setup()



local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),

  ['<C-f>'] = cmp_action.luasnip_jump_forward(),
  ['<C-b>'] = cmp_action.luasnip_jump_backward(),
})

--lsp.setup_nvim_cmp({
--  mapping = cmp_mappings
--})





cmp.setup({
  sources = {
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'luasnip', keyword_length = 1 },
  },
  mapping = cmp_mappings,
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
      --local ls = require('luasnip');

      ----ls.snippets = {
      ----  all = {
      ----    ls.parser.parse_snippet("hellothere", "local $1")
      ----  },
      ----}

      --ls.lsp_expand(args.body)
    end,
  },
})



require('luasnip.loaders.from_vscode').lazy_load({
  paths = "~/.config/nvim/snippets"
})


vim.keymap.set("n", "<leader>fm", ":LspZeroFormat<CR>")
