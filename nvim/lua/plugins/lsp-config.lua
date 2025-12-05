return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls","pylsp","jdtls", "asm_lsp"}
			})
		end,

	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities
			})
			vim.lsp.config("pylsp", {
				capabilities = capabilities
			})
			vim.lsp.config("jdtls", {
				capabilities = capabilities
			})
			vim.lsp.config("asm_lsp", {
				capabilities = capabilities
			})
			vim.lsp.config("arduino_language_server", {
				capabilities = capabilities
			})
			vim.lsp.config("clangd", {
				capabilities = capabilities
			})
			vim.lsp.config("intelephense", {
				capabilities = capabilities
			})
			vim.lsp.config("ast_grep", {
				capabilities = capabilities
			})
			vim.lsp.config("ts_ls", {
				capabilities = capabilities
			})
			vim.lsp.config("verible", {
				capabilities = capabilities
			})
		end,
	},
}
