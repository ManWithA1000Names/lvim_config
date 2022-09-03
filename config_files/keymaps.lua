local _, actions = pcall(require, "telescope.actions")

lvim.leader = "space"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.normal_mode["<C-q>"] = ":q<CR>"
lvim.keys.normal_mode[";"] = "<cmd>lua vim.lsp.buf.formatting()<CR>"
lvim.keys.normal_mode["\\"] = "za"
lvim.keys.normal_mode["<C-f>"] = ":Telescope current_buffer_fuzzy_find<CR>"
lvim.keys.normal_mode["'"] = ":w<CR>"
lvim.keys.normal_mode['"'] = ":nohl<CR>"
lvim.keys.normal_mode["<C-M-j>"] = "yypk"
lvim.keys.normal_mode["<C-M-k>"] = "yyPj"
lvim.keys.normal_mode["<Return>"] = "@a"
lvim.keys.normal_mode["<Backspace>"] = "@a"
lvim.keys.normal_mode["<C-e>"] = ":GoIfErr<CR>"
lvim.keys.normal_mode["Y"] = "y$"
lvim.keys.normal_mode["gh"] = "<cmd>lua vim.lsp.buf.hover()<CR>"
lvim.keys.normal_mode[","] = ":HopWord<CR>"

lvim.keys.insert_mode["<C-s>"] = "<esc>:w<CR>i"
lvim.keys.insert_mode["<C-M-Up>"] = "<esc>yyPji"
lvim.keys.insert_mode["<C-M-Down>"] = "<esc>yypki"

lvim.keys.term_mode["<Esc>"] = "<C-\\><C-N>:ToggleTerm<CR>"

lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

-- which_key

lvim.builtin.which_key.mappings["U"] = { "<cmd>lua require('dapui').toggle()<CR>", "Toggle the dap ui" }

lvim.builtin.which_key.mappings["q"] = { ":qa<CR>", "Quit All" }
lvim.builtin.which_key.mappings["w"] = { ":wa<CR>", "Save All" }
lvim.builtin.which_key.mappings["d"] = { "<cmd>Trouble lsp_workspace_diagnostics<CR>", "Workspace Diagnostics" }
lvim.builtin.which_key.mappings["e"] = { ":NvimTreeToggle<CR>", "Explorer" }
lvim.builtin.which_key.mappings["E"] = { ":Telescope<CR>", "Telescope" }
lvim.builtin.which_key.mappings["r"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" }
lvim.builtin.which_key.mappings["`"] = { ":make<CR>", "Run makeprg command" }

lvim.builtin.which_key.mappings["S"] = {
  "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
  "Search and Replace",
}

lvim.builtin.which_key.mappings["s"] = { ":Telescope live_grep<CR>", "Search" }
lvim.builtin.which_key.mappings["t"] = { ":ToggleTerm<CR>", "Toggle Terminal" }

lvim.builtin.which_key.mappings["T"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<CR>", "References" },
  f = { "<cmd>Trouble lsp_definitions<CR>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<CR>", "File Diagnosticss" },
  q = { "<cmd>Trouble quickfix<CR>", "QuickFix" },
  l = { "<cmd>Trouble loclist<CR>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<CR>", "Project Diagnosticss" },
}

lvim.builtin.which_key.mappings["h"] = {
  name = "+Hop",
  l = { ":HopLine<CR>", "Line" },
  w = { ":HopWord<CR>", "Word" },
  p = { ":HopPattern<CR>", "Pattern" },
  c = { ":HopChar1<CR>", "1 Character" },
  C = { ":HopChar2<CR>", "2 Characters" },
}
