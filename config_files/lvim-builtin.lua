lvim.log.level = "warn"
lvim.lint_on_save = true
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"

lvim.builtin.dap.active = true
lvim.builtin.dap.on_config_done = function()
	require("dapui").setup()
end

lvim.builtin.terminal.active = true
-- lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.setup.view.side = "left"

lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.ignore_install = { "haskell" }

lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"css",
	"rust",
	"yaml",
	"go",
	"fish",
	"julia",
}
