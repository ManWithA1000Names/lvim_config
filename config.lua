--[[
  ▄████ ▓█████  ███▄    █ ▓█████  ██▀███   ▄▄▄       ██▓    
 ██▒ ▀█▒▓█   ▀  ██ ▀█   █ ▓█   ▀ ▓██ ▒ ██▒▒████▄    ▓██▒    
▒██░▄▄▄░▒███   ▓██  ▀█ ██▒▒███   ▓██ ░▄█ ▒▒██  ▀█▄  ▒██░    
░▓█  ██▓▒▓█  ▄ ▓██▒  ▐▌██▒▒▓█  ▄ ▒██▀▀█▄  ░██▄▄▄▄██ ▒██░    
░▒▓███▀▒░▒████▒▒██░   ▓██░░▒████▒░██▓ ▒██▒ ▓█   ▓██▒░██████▒
 ░▒   ▒ ░░ ▒░ ░░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▒░▓  ░
  ░   ░  ░ ░  ░░ ░░   ░ ▒░ ░ ░  ░  ░▒ ░ ▒░  ▒   ▒▒ ░░ ░ ▒  ░
░ ░   ░    ░      ░   ░ ░    ░     ░░   ░   ░   ▒     ░ ░   
      ░    ░  ░         ░    ░  ░   ░           ░  ░    ░  ░
                                                            
]]
lvim.log.level = "warn"
lvim.lint_on_save = true
lvim.format_on_save = false
lvim.colorscheme = "tokyonight"
vim.opt["foldlevel"] = 20
vim.opt["foldmethod"] = "indent"
vim.g.tokyonight_style = "night"
vim.cmd("autocmd VimLeave,VimSuspend * set guicursor=a:ver90")

-- config vim-go
vim.cmd([[
  let g:go_code_completion_enabled = 0
  let g:go_play_browser_command = 'xdg-open %URL% &'
  let g:go_fmt_autosave = 0
  let g:go_echo_go_info = 0
  let g:go_addtags_transform = 'camelcase'
]])

-- gui stuff
vim.cmd([[
  let g:neovide_refresh_rate=120
  set guifont=FiraCode\ Nerd\ Font:h10
]])

--[[
 ██ ▄█▀▓█████▓██   ██▓ ▄▄▄▄    ██▓ ███▄    █ ▓█████▄  ██▓ ███▄    █   ▄████   ██████ 
 ██▄█▒ ▓█   ▀ ▒██  ██▒▓█████▄ ▓██▒ ██ ▀█   █ ▒██▀ ██▌▓██▒ ██ ▀█   █  ██▒ ▀█▒▒██    ▒ 
▓███▄░ ▒███    ▒██ ██░▒██▒ ▄██▒██▒▓██  ▀█ ██▒░██   █▌▒██▒▓██  ▀█ ██▒▒██░▄▄▄░░ ▓██▄   
▓██ █▄ ▒▓█  ▄  ░ ▐██▓░▒██░█▀  ░██░▓██▒  ▐▌██▒░▓█▄   ▌░██░▓██▒  ▐▌██▒░▓█  ██▓  ▒   ██▒
▒██▒ █▄░▒████▒ ░ ██▒▓░░▓█  ▀█▓░██░▒██░   ▓██░░▒████▓ ░██░▒██░   ▓██░░▒▓███▀▒▒██████▒▒
▒ ▒▒ ▓▒░░ ▒░ ░  ██▒▒▒ ░▒▓███▀▒░▓  ░ ▒░   ▒ ▒  ▒▒▓  ▒ ░▓  ░ ▒░   ▒ ▒  ░▒   ▒ ▒ ▒▓▒ ▒ ░
░ ░▒ ▒░ ░ ░  ░▓██ ░▒░ ▒░▒   ░  ▒ ░░ ░░   ░ ▒░ ░ ▒  ▒  ▒ ░░ ░░   ░ ▒░  ░   ░ ░ ░▒  ░ ░
░ ░░ ░    ░   ▒ ▒ ░░   ░    ░  ▒ ░   ░   ░ ░  ░ ░  ░  ▒ ░   ░   ░ ░ ░ ░   ░ ░  ░  ░  
░  ░      ░  ░░ ░      ░       ░           ░    ░     ░           ░       ░       ░  
              ░ ░           ░                 ░                                      

view all the defaults by pressing <leader>Lk
]]
lvim.leader = "space"
-- Save
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.insert_mode["<C-s>"] = "<esc>:w<CR>i"
lvim.keys.normal_mode["'"] = ":w<CR>"
-- Quit
lvim.keys.normal_mode["<C-q>"] = ":q<CR>"
lvim.keys.insert_mode["<C-q>"] = ":q<CR>"
-- Buffers
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- File Manipulation / LSP
lvim.keys.normal_mode[";"] = "<cmd>lua vim.lsp.buf.formatting()<CR>1<CR><CR>"
lvim.keys.normal_mode["gh"] = "<cmd>lua vim.lsp.buf.hover()<CR>"
lvim.keys.normal_mode["\\"] = "za"
lvim.keys.normal_mode["<C-f>"] = ":Telescope current_buffer_fuzzy_find<CR>"
lvim.keys.normal_mode["<C-e>"] = ":GoIfErr<CR>"
-- Visual Studio Code
lvim.keys.normal_mode["<C-M-i>"] = "yypk"
lvim.keys.normal_mode["<C-M-j>"] = "yypk"
lvim.keys.insert_mode["<C-M-Up>"] = "<esc>yyPji"
lvim.keys.normal_mode["<C-M-Down>"] = "<esc>yypki"
-- Marcos stuff
lvim.keys.normal_mode["<Return>"] = "@a"
lvim.keys.normal_mode["<Return>"] = "@w"
-- Completing VIM
lvim.keys.normal_mode["Y"] = "y$"
-- Navigation
lvim.keys.normal_mode[","] = ":HopWord<CR>"
-- Terminal
lvim.keys.term_mode["<Esc>"] = "<C-\\><C-N>:ToggleTerm<CR>"
-- Telescope
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
	i = {
		["<C-j>"] = actions.move_selection_next,
		["<C-k>"] = actions.move_selection_previous,
		["<C-n>"] = actions.cycle_history_next,
		["<C-p>"] = actions.cycle_history_prev,
	},
	n = {
		["<C-j>"] = actions.move_selection_next,
		["<C-k>"] = actions.move_selection_previous,
	},
}
-- Which Key
lvim.builtin.which_key.mappings["U"] = { "<cmd>lua require('dapui').toggle()<CR>", "Toggle the DAP UI" }
lvim.builtin.which_key.mappings["q"] = { ":qa<CR>", "Quit All" }
lvim.builtin.which_key.mappings["w"] = { ":wa<CR>", "Save All" }
lvim.builtin.which_key.mappings["d"] = { "<cmd>Trouble lsp_workspace_diagnositcs<CR>", "Workspace Diagnostics" }
lvim.builtin.which_key.mappings["e"] = { ":NvimTreeToggle<CR>", "Explorer" }
lvim.builtin.which_key.mappings["E"] = { ":Telescope<CR>", "Telescope" }
lvim.builtin.which_key.mappings["r"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" }
lvim.builtin.which_key.mappings["`"] = { ":make<CR>", "Run makeprg command" }
lvim.builtin.which_key.mappings["S"] =
	{ "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search and Replace" }
lvim.builtin.which_key.mappings["s"] = { ":Telescope live_grep<CR>", "Search" }
lvim.builtin.which_key.mappings["t"] = { ":ToggleTerm<CR>", "Toggle Terminal" }
lvim.builtin.which_key.mappings["T"] = {
	name = "+Trouble",
	r = { "<cmd>Trouble lsp_references<CR>", "References" },
	f = { "<cmd>Trouble lsp_definitions<CR>", "Definitions" },
	d = { "<cmd>Trouble document_diagnostics<CR>", "File Diagnostics" },
	q = { "<cmd>Trouble quickfix<CR>", "QuickFix" },
	l = { "<cmd>Trouble loxlist<CR>", "Location List" },
	w = { "<cmd>Trouble lsp_workspace_diagnositcs<CR>", "Workspace Diagnostics" },
}
lvim.builtin.which_key.mappings["h"] = {
	name = "+Hop",
	l = { ":HopLine<CR>", "Line" },
	w = { ":HopWord<CR>", "Word" },
	p = { ":HopPattern<CR>", "Pattern" },
	c = { ":HopChar1<CR>", "1 Character" },
	C = { ":HopChar2<CR>", "2 Characters" },
}

--[[
 ▄▄▄▄    █    ██  ██▓ ██▓  ▄▄▄█████▓    ██▓ ███▄    █ 
▓█████▄  ██  ▓██▒▓██▒▓██▒  ▓  ██▒ ▓▒   ▓██▒ ██ ▀█   █ 
▒██▒ ▄██▓██  ▒██░▒██▒▒██░  ▒ ▓██░ ▒░   ▒██▒▓██  ▀█ ██▒
▒██░█▀  ▓▓█  ░██░░██░▒██░  ░ ▓██▓ ░    ░██░▓██▒  ▐▌██▒
░▓█  ▀█▓▒▒█████▓ ░██░░██████▒▒██▒ ░    ░██░▒██░   ▓██░
░▒▓███▀▒░▒▓▒ ▒ ▒ ░▓  ░ ▒░▓  ░▒ ░░      ░▓  ░ ▒░   ▒ ▒ 
▒░▒   ░ ░░▒░ ░ ░  ▒ ░░ ░ ▒  ░  ░        ▒ ░░ ░░   ░ ▒░
 ░    ░  ░░░ ░ ░  ▒ ░  ░ ░   ░          ▒ ░   ░   ░ ░ 
 ░         ░      ░      ░  ░           ░           ░ 
      ░                                               
]]
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

lvim.builtin.notify.active = true

lvim.builtin.terminal.active = true

lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

lvim.builtin.dap.active = true
lvim.builtin.dap.on_config_done = function()
	require("dapui").setup()
end

lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
	"html",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

--[[
 ██▓    ▄▄▄       ███▄    █   ▄████  █    ██  ▄▄▄        ▄████ ▓█████      ██████ ▓█████  ██▀███   ██▒   █▓▓█████  ██▀███      ██▓███   ██▀███   ▒█████  ▄▄▄█████▓ ▒█████   ▄████▄   ▒█████   ██▓    
▓██▒   ▒████▄     ██ ▀█   █  ██▒ ▀█▒ ██  ▓██▒▒████▄     ██▒ ▀█▒▓█   ▀    ▒██    ▒ ▓█   ▀ ▓██ ▒ ██▒▓██░   █▒▓█   ▀ ▓██ ▒ ██▒   ▓██░  ██▒▓██ ▒ ██▒▒██▒  ██▒▓  ██▒ ▓▒▒██▒  ██▒▒██▀ ▀█  ▒██▒  ██▒▓██▒    
▒██░   ▒██  ▀█▄  ▓██  ▀█ ██▒▒██░▄▄▄░▓██  ▒██░▒██  ▀█▄  ▒██░▄▄▄░▒███      ░ ▓██▄   ▒███   ▓██ ░▄█ ▒ ▓██  █▒░▒███   ▓██ ░▄█ ▒   ▓██░ ██▓▒▓██ ░▄█ ▒▒██░  ██▒▒ ▓██░ ▒░▒██░  ██▒▒▓█    ▄ ▒██░  ██▒▒██░    
▒██░   ░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█  ██▓▓▓█  ░██░░██▄▄▄▄██ ░▓█  ██▓▒▓█  ▄      ▒   ██▒▒▓█  ▄ ▒██▀▀█▄    ▒██ █░░▒▓█  ▄ ▒██▀▀█▄     ▒██▄█▓▒ ▒▒██▀▀█▄  ▒██   ██░░ ▓██▓ ░ ▒██   ██░▒▓▓▄ ▄██▒▒██   ██░▒██░    
░██████▒▓█   ▓██▒▒██░   ▓██░░▒▓███▀▒▒▒█████▓  ▓█   ▓██▒░▒▓███▀▒░▒████▒   ▒██████▒▒░▒████▒░██▓ ▒██▒   ▒▀█░  ░▒████▒░██▓ ▒██▒   ▒██▒ ░  ░░██▓ ▒██▒░ ████▓▒░  ▒██▒ ░ ░ ████▓▒░▒ ▓███▀ ░░ ████▓▒░░██████▒
░ ▒░▓  ░▒▒   ▓▒█░░ ▒░   ▒ ▒  ░▒   ▒ ░▒▓▒ ▒ ▒  ▒▒   ▓▒█░ ░▒   ▒ ░░ ▒░ ░   ▒ ▒▓▒ ▒ ░░░ ▒░ ░░ ▒▓ ░▒▓░   ░ ▐░  ░░ ▒░ ░░ ▒▓ ░▒▓░   ▒▓▒░ ░  ░░ ▒▓ ░▒▓░░ ▒░▒░▒░   ▒ ░░   ░ ▒░▒░▒░ ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░▓  ░
░ ░ ▒  ░ ▒   ▒▒ ░░ ░░   ░ ▒░  ░   ░ ░░▒░ ░ ░   ▒   ▒▒ ░  ░   ░  ░ ░  ░   ░ ░▒  ░ ░ ░ ░  ░  ░▒ ░ ▒░   ░ ░░   ░ ░  ░  ░▒ ░ ▒░   ░▒ ░       ░▒ ░ ▒░  ░ ▒ ▒░     ░      ░ ▒ ▒░   ░  ▒     ░ ▒ ▒░ ░ ░ ▒  ░
  ░ ░    ░   ▒      ░   ░ ░ ░ ░   ░  ░░░ ░ ░   ░   ▒   ░ ░   ░    ░      ░  ░  ░     ░     ░░   ░      ░░     ░     ░░   ░    ░░         ░░   ░ ░ ░ ░ ▒    ░      ░ ░ ░ ▒  ░        ░ ░ ░ ▒    ░ ░   
    ░  ░     ░  ░         ░       ░    ░           ░  ░      ░    ░  ░         ░     ░  ░   ░           ░     ░  ░   ░                    ░         ░ ░               ░ ░  ░ ░          ░ ░      ░  ░
                                                                                                       ░                                                                   ░                         
]]

lvim.lsp.installer.setup.automatic_installation = false

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ exe = "black" },
	{ exe = "prettier" },
	{ exe = "shfmt" },
	{ exe = "stylua" },
})

-- -- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ exe = "flake8" },
	{
		exe = "codespell",
		args = { "-I", get_config_dir() .. "ignore-words.txt" },
	},
	{ exe = "shellcheck" },
	{ exe = "golangci-lint" },
})

-- config extensions
lvim.lsp.diagnostics.virtual_text = false

lvim.lsp.automatic_configuration.skipped_servers = { "rust" }

--[[
 ██▓███   ██▓     █    ██   ▄████  ██▓ ███▄    █   ██████ 
▓██░  ██▒▓██▒     ██  ▓██▒ ██▒ ▀█▒▓██▒ ██ ▀█   █ ▒██    ▒ 
▓██░ ██▓▒▒██░    ▓██  ▒██░▒██░▄▄▄░▒██▒▓██  ▀█ ██▒░ ▓██▄   
▒██▄█▓▒ ▒▒██░    ▓▓█  ░██░░▓█  ██▓░██░▓██▒  ▐▌██▒  ▒   ██▒
▒██▒ ░  ░░██████▒▒▒█████▓ ░▒▓███▀▒░██░▒██░   ▓██░▒██████▒▒
▒▓▒░ ░  ░░ ▒░▓  ░░▒▓▒ ▒ ▒  ░▒   ▒ ░▓  ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░
░▒ ░     ░ ░ ▒  ░░░▒░ ░ ░   ░   ░  ▒ ░░ ░░   ░ ▒░░ ░▒  ░ ░
░░         ░ ░    ░░░ ░ ░ ░ ░   ░  ▒ ░   ░   ░ ░ ░  ░  ░  
             ░  ░   ░           ░  ░           ░       ░  
]]
local tokyonight = { "folke/tokyonight.nvim" }
local trouble = {
	"folke/trouble.nvim",
	cmd = "TroubleToggle",
}
local hop = {
	"phaazon/hop.nvim",
	event = "BufRead",
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
	tokyonight,
	trouble,
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	hop,
	neoscroll,
	lsp_signature,
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
	},
	numb,
	twilight,
	todo_comments,
	rust_tools,
	dap_ui,
	{ "fatih/vim-go" },
	{ "windwp/nvim-spectre" },
	{ "norcalli/nvim-colorizer.lua" },
	{ "lukas-reineke/indent-blankline.nvim" },
}

--[[
  DAP
]]

local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui.config"] = function()
	dapui.open()
end

dap.listeners.before.event_terminated["dapui.config"] = function()
	dapui.close()
end

dap.listeners.before.event_exited["dapui.config"] = function()
	dapui.close()
end
