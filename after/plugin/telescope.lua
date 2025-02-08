local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<C-b>', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local function generateLspOpts()
  --local make_entry = require "telescope.make_entry"
  return { file_ignore_patterns = { ".git" }, show_line = false,
  }
end

vim.keymap.set('n', 'gd', function() builtin.lsp_definitions(generateLspOpts()) end, {})
--vim.keymap.set('n', 'gD', builtin.lsp_declarations, {})
vim.keymap.set('n', 'gi', function() builtin.lsp_implementations(generateLspOpts()) end, {})
vim.keymap.set('n', 'go', function() builtin.lsp_type_definitions(generateLspOpts()) end, {})
vim.keymap.set('n', 'gr', function() builtin.lsp_references(generateLspOpts()) end, {})
vim.keymap.set('n', '<leader>fS', function() builtin.lsp_workspace_symbols() end, {})
vim.keymap.set('n', '<leader>fs', function() builtin.lsp_document_symbols() end, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set("n", "<leader>pv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
--vim.keymap.set('n', 'gws', builtin.lsp_workspace_symbols, {})
--vim.keymap.set('n', 'gws', builtin.lsp_workspace_symbols, {})
--vim.keymap.set('n', 'gdd', builtin.lsp_document_diagnostics, {})
--vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)

local telescope = require('telescope')
local fb_actions = telescope.extensions.file_browser.actions
telescope.setup {
  defaults = {
    wrap_results = true,
    file_ignore_patterns = {
      -- "node_modules",
      -- ".git/",
      -- ".output",
      -- ".nuxt",
      -- "dist",
      -- ".next",
      -- ".vendor",
      -- "./var/cache/dev",
      -- "target",
      -- ".angular"
    },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      --'--ignore-file',
      --'.gitignore'
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case"
    },
    lsp_handlers = {
      code_action = {
        telescope = require('telescope.themes').get_dropdown({}),
      },
    },
    file_browser = {
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      no_ignore = false,
      hidden = { file_browser = true, folder_browser = true },
      respect_gitignore = false,
      mappings = {
       ["i"] = {
         -- your custom insert mode mappings
          ["<C-h>"] = fb_actions.goto_home_dir,
       },
      --  ["n"] = {
      --    -- your custom normal mode mappings
      --  },
      },
    },
  }
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('lsp_handlers')
require("telescope").load_extension("file_browser")


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
