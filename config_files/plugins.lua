local nvim_ts_autotag = {
	"windwp/nvim-ts-autotag",
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
local trouble = {
	"folke/trouble.nvim",
	cmd = "TroubleToggle",
	requires = "kyazdani42/nvim-web-devicons",
	config = function()
		require("trouble").setup({
			position = "right",
		})
	end,
}
local hop = {
	"phaazon/hop.nvim",
	config = function()
		require("hop").setup()
	end,
}
local neoscroll = {
	"karb94/neoscroll.nvim",
	config = function()
		require("neoscroll").setup({
			mappings = {
				"<C-u>",
				"<C-d>",
				"<C-b>",
				"<C-y>",
				"zt",
				"zz",
				"zb",
			},
		})
	end,
}
local lsp_signature = {
	"ray-x/lsp_signature.nvim",
	config = function()
		local conf = {
			bind = true,
			floating_window = false,
			hint_prefix = "   ",
		}
		require("lsp_signature").setup(conf)
		require("lsp_signature").on_attach(conf)
	end,
}
local symbols_outline = {
	"simrat39/symbols-outline.nvim",
	config = function()
		require("colorizer").setup({
			scss = {
				css = true,
			},
			css = {
				css = true,
			},
			javascript = {
				css = true,
			},
			typescript = {
				css = true,
			},
			typescriptreact = {
				css = true,
			},
		})
	end,
}
local numb = {
	"nacro90/numb.nvim",
	config = function()
		require("numb").setup()
	end,
}
local twilight = {
	"folke/twilight.nvim",
	config = function()
		require("twilight").setup()
	end,
}
local todo_comments = {
	"folke/todo-comments.nvim",
	requires = "nvim-lua/plenary.nvim",
	config = function()
		require("todo-comments").setup({})
	end,
}
local rust_tools = {
	"simrat39/rust-tools.nvim",
	config = function()
		require("rust-tools").setup({
			tools = {
				autoSetHints = true,
				hover_with_actions = true,
				runnables = {
					use_telescope = true,
				},
			},
			server = {
				cmd = { vim.fn.stdpath("data") .. "/lsp_servers/rust/rust-analyzer" },
				on_attach = require("lvim.lsp").common_on_attach,
				on_init = require("lvim.lsp").common_on_init,
			},
		})
	end,
	ft = { "rust", "rs" },
}
local dap_ui = {
	"rcarriga/nvim-dap-ui",
	requires = { "mfussenegger/nvim-dap" },
}

lvim.plugins = {
	hop,
	numb,
	dap_ui,
	trouble,
	twilight,
	neoscroll,
	rust_tools,
	todo_comments,
	lsp_signature,
	symbols_outline,
	nvim_ts_autotag,
	{ "fatih/vim-go" },
	{ "windwp/nvim-spectre" },
	{ "jparise/vim-graphql" },
	{ "folke/tokyonight.nvim" },
	{ "vuki656/package-info.nvim" },
	{ "norcalli/nvim-colorizer.lua" },
	{ "lukas-reineke/indent-blankline.nvim" },
}
