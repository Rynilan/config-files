return {
	"HiPhish/rainbow-delimiters.nvim",

	config = function()
		vim.g.rainbow_delimiters = {
			strategy = {
				[''] = 'rainbow-delimiters.strategy.global',
				vim = 'rainbow-delimiters.strategy.local',
			},

			query = {
				[''] = 'rainbow-delimiters',
				lua = 'rainbow-blocks',
			},

			priority = {
				[''] = 110,
				lua = 210,
			},

			highlight = {
				'RainbowDelimiterRed',
				'RainbowDelimiterYellow',
				'RainbowDelimiterBlue',
				'RainbowDelimiterOrange',
				'RainbowDelimiterGreen',
				'RainbowDelimiterViolet',
				'RainbowDelimiterCyan',
			},
		}

		-- Prevent rainbow-delimiters from attaching
		-- to buffers without Treesitter parsers
		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local ok = pcall(vim.treesitter.get_parser, args.buf)

				if not ok then
					vim.b[args.buf].rainbow_delimiters_disable = true
				end
			end,
		})
	end,
}
