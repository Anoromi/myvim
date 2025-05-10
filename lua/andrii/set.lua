-- vim.opt.guicursor = "|"
vim.opt.guicursor = ""


vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
--vim.opt.expandtab = true

-- vim.opt.autoident = true
-- vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.o.exrc = true


-- local Path = require("pathlib")
--
-- local dir = Path('~')
-- local neovimConfigPath = dir / ".vim/undodir"
--
-- --vim.opt.undodir = os.getenv("USER") .. "/.vim/undodir"
-- vim.opt.undodir = vim.fn.expand(tostring(neovimConfigPath))
--
-- vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true



vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "90"

vim.opt.clipboard = "unnamedplus"


vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end
})
