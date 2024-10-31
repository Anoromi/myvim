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
map("s", "l", { noremap = true })
map("l", "n", { noremap = true })
map("L", "N", { noremap = true })
map("-", "$", { noremap = true })
map("_", "^", { noremap = true })
--map("N", "<C-w><C-w>")
--map("T", "<C-w><C-r>")
map("T", "8<Down>")
map("N", "8<Up>")
map("D", "<C-w><C-r>")

map("<leader>s", ":wall<cr>")
map("<leader>n", ":q<cr>")
map("<leader>t", ":q!<cr>")

--map("<C-t>", ":wincmd k<CR>")
--map("<C-h>", ":wincmd j<CR>")
--map("<C-n>", ":wincmd l<CR>")
--map("<C-;>", ":wincmd s<CR>")
--
--map("<C-n>", ":wincmd k<CR>")
--map("<C-h>", ":wincmd j<CR>")
--map("<C-t>", ":wincmd t<CR>")
--map("<C-;>", ":wincmd s<CR>")


--map("<C-h>", ":wincmd d<CR>")
--map("<C-t>", ":wincmd h<CR>")
--map("<C-n>", ":wincmd t<CR>")
--map("<C-s>", ":wincmd n<CR>")

--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>cbw", function ()
  vim.o.background = 'light'
end)

vim.keymap.set("n", "<leader>cbd", function ()
  vim.o.background = 'dark'
end)

--map("i", "<RightMouse>", '<C-o>:normal "+gp<CR>', { desc = "Use right mouse to paste clipboard + in insert mode"})
--vim.keymap.set("i", "<S-t>", ":echo 'hello there'")
--vim.keymap.set("i", "<c-Space>", "hello")


--vim.keymap.set("n", "<leader>q", ":q!<CR>")



-- map("<buffer>" <nowait> <left> - " remap left arrow key to go up one directory
