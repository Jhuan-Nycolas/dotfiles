return {
	"nvimtools/none-ls.nvim",
  commit = "2d1bcf0",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
			},
		})

		vim.keymap.set("n", "\\f", vim.lsp.buf.format, { noremap = true })
	end,
}
