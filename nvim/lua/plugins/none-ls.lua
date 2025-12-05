return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.asmfmt,
				null_ls.builtins.formatting.phpcbf,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.verible,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.diagnostics.prettier,
				null_ls.builtins.diagnostics.trivy,
				null_ls.builtins.diagnostics.ast_grep,
				null_ls.builtins.diagnostics.verible,
			}
		})
	end
}
