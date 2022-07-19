lvim.lsp.automatic_servers_installation = false

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ exe = "black" },
	{ exe = "prettier" },
	{ exe = "stylua" },
	{ exe = "shfmt" },
})

-- -- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ exe = "flake8" },
	{
		exe = "codespell", --[[ args = { "-I", "/home/loena/.config/codespell/allow.txt" }]]
	},
	{ exe = "shellcheck" },
	{ exe = "golangci-lint" },
})

-- config extensions
lvim.lsp.diagnostics.virtual_text = false

lvim.lsp.override = { "rust" }
