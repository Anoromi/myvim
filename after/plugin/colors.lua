local function vscode_opts()
  local c = require("vscode.colors").get_colors()

  return {
    transparent = true,
    italic_comments = true,
    underline_links = true,
    disable_nvimtree_bg = true,
    group_overrides = {
      Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
    },
  }
end

local function apply_colors()
  require("vscode").setup(vscode_opts())
  -- Neovim can detect the terminal background and set `background` for us.
  -- Reuse that value instead of forcing light mode here.
  vim.cmd.colorscheme("vscode")
end

local group = vim.api.nvim_create_augroup("AndriiVscodeTheme", { clear = true })

vim.api.nvim_create_autocmd("OptionSet", {
  group = group,
  pattern = "background",
  callback = function()
    vim.schedule(apply_colors)
  end,
})

apply_colors()
