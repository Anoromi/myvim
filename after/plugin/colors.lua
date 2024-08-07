
--require('rose-pine').setup({
--	--- @usage 'auto'|'main'|'moon'|'dawn'
--	variant = 'dawn',
--	--- @usage 'main'|'moon'|'dawn'
--	dark_variant = 'main',
--	bold_vert_split = false,
--	dim_nc_background = false,
--	disable_background = false,
--	disable_float_background = false,
--	disable_italics = false,
--
--	--- @usage string hex value or named color from rosepinetheme.com/palette
--	groups = {
--		background = 'base',
--		background_nc = '_experimental_nc',
--		panel = 'surface',
--		panel_nc = 'base',
--		border = 'highlight_med',
--		comment = 'muted',
--		link = 'iris',
--		punctuation = 'subtle',
--
--		error = 'love',
--		hint = 'iris',
--		info = 'foam',
--		warn = 'gold',
--
--		headings = {
--			h1 = 'iris',
--			h2 = 'foam',
--			h3 = 'rose',
--			h4 = 'gold',
--			h5 = 'pine',
--			h6 = 'foam',
--		}
--		-- or set all headings at once
--		-- headings = 'subtle'
--	},
--
--	-- Change specific vim highlight groups
--	-- https://github.com/rose-pine/neovim/wiki/Recipes
--	highlight_groups = {
--		ColorColumn = { bg = 'rose' },
--
--		-- Blend colours against the "base" background
--		CursorLine = { bg = 'rose', blend = 10 },
--		StatusLine = { fg = 'love', bg = 'love', blend = 3 },
--	}
--})







function ApplyColor(color)
	color = color or "vscode"
	vim.cmd.colorscheme(color)
  vim.o.background = 'light'

  --	vim.api.nvim_set_hl(0, "Normal", { bg = 0x11111111 })
  --	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


ApplyColor()


