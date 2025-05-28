require("avante").setup({
	-- add any opts here
	-- for example
	provider = "gemini",
	gemini_pro = {
		-- endpoint = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent",
		model = "gemini-2.5-pro-preview-05-06", -- your desired model (or use gpt-4o, etc.)
		timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
		temperature = 0,
		max_tokens = 20000, -- Increase this to include reasoning tokens (for reasoning models)
		--reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
	},
})
