if vim.fn.has("nvim-0.12") == 1 then
	local runtime_query

	for _, path in ipairs(vim.api.nvim_get_runtime_file("queries/markdown/injections.scm", true)) do
		if path:match("/share/nvim/runtime/queries/markdown/injections%.scm$") then
			runtime_query = path
			break
		end
	end

	-- Neovim 0.12 ships a markdown injections query that avoids the
	-- nvim-treesitter directive path currently crashing hover markdown floats.
	if runtime_query then
		vim.treesitter.query.set("markdown", "injections", table.concat(vim.fn.readfile(runtime_query), "\n"))
	end
end
