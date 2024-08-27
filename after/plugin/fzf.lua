local fzf = require("fzf-lua")

fzf.setup({

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
})


vim.keymap.set('n', '<leader>ff', fzf.files, {})
vim.keymap.set('n', '<leader>fg', fzf.live_grep, {})
vim.keymap.set('n', '<leader>fb', fzf.buffers, {})
vim.keymap.set('n', '<leader>fh', fzf.help_tags, {})
