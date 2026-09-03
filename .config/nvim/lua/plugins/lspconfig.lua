return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"clangd",
			"pyright",
			"cmake",
			"cssls",
			"tailwindcss",
			"html",
			"ts_ls",
			"vue_ls",
			"jsonls",
			"gopls",
			"ruff",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{
			"neovim/nvim-lspconfig",
			dependencies = { "saghen/blink.cmp" },
			config = function()
				vim.lsp.config("ruff", {
					init_options = {
						settings = {
							args = {},
						},
					},
				})
			end,
		},
		{
			"j-hui/fidget.nvim",
			opts = {},
		},
	},
}
