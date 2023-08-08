vim.g.mapleader = ","
-- vim.keymap.set("n", "")
local function map(lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.keymap.set('n', lhs, rhs, options)
  vim.keymap.set('v', lhs, rhs, options)
end

map("h", "h", { noremap = true })
map("t", "j", { noremap = true })
map("n", "k", { noremap = true })
map("s", "l", { noremap = true})
map("l", "n", { noremap = true})
map("L", "N", { noremap = true})
map("-", "$", { noremap = true })
map("_", "^", { noremap = true})
map("N", "<C-w><C-w>")
map("T", "<C-w><C-r>")
map("H", "8<Down>")
map("S", "8<Up>")
map("D", "<C-w><C-r>")

map("<leader>s", ":wall<cr>")



vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--vim.keymap.set("n", "<leader>q", ":q!<CR>")



-- map("<buffer>" <nowait> <left> - " remap left arrow key to go up one directory
