lvim.lsp.installer.setup.automatic_installation = false

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  { exe = "black" },
  { exe = "prettier" },
  { exe = "shfmt" },
})

-- -- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  { exe = "flake8" },
  {
    exe = "codespell", args = { "-I", get_config_dir() .. "ignore-words.txt" }
  },
  { exe = "shellcheck" },
  { exe = "golangci-lint" },
})

-- config extensions
lvim.lsp.diagnostics.virtual_text = false

lvim.lsp.automatic_configuration.skipped_servers = { "rust" }
