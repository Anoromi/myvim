local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
--vim.keymap.set('n', 'gD', builtin.lsp_declarations, {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
vim.keymap.set('n', 'go', builtin.lsp_type_definitions, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fws', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
--vim.keymap.set('n', 'gws', builtin.lsp_workspace_symbols, {})
--vim.keymap.set('n', 'gws', builtin.lsp_workspace_symbols, {})
--vim.keymap.set('n', 'gdd', builtin.lsp_document_diagnostics, {})
--vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".git",
      ".output",
      ".nuxt",
      "dist",
      ".next",
      ".vendor",
      "./var/cache/dev",
      "target",
      ".angular"
    },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--ignore-file',
      '.gitignore'
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case"
    },
    -- lsp_handlers = {
    --   code_action = {
    --     telescope = require('telescope.themes').get_dropdown({}),
    --   },
    -- },
  }
}

require('telescope').load_extension('fzf')
-- require('telescope').load_extension('lsp_handlers')

--assert(require('telescope').extensions.lsp_handlers ~= nil, 'hehehe')

--assert(false, getAllData(require('telescope').extensions))
--assert(require('telescope').extensions.lsp_handlers.textDocument ~= nil, 'hehehe')
--assert(vim.lsp.handlers['textDocument/references'] ~= nil, 'heheh')



--vim.keymap.set('n', 'gd', fzf.lsp_definitions, {})
--vim.keymap.set('n', 'gD', fzf.lsp_declarations, {})
--vim.keymap.set('n', 'gi', fzf.lsp_implementations, opts)
--vim.keymap.set('n', 'go', fzf.lsp_typedefs, opts)
--vim.keymap.set('n', 'gr', fzf.lsp_references, opts)
--vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
