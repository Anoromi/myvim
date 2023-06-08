








function ApplyColor(color)
	color = color or "catppuccin-latte"
	vim.cmd.colorscheme(color)
	
  --	vim.api.nvim_set_hl(0, "Normal", { bg = 0x11111111 })
  --	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


ApplyColor()


