--[[
-- ███╗   ███╗██╗   ██╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗
-- ████╗ ████║╚██╗ ██╔╝    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝
-- ██╔████╔██║ ╚████╔╝     ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
-- ██║╚██╔╝██║  ╚██╔╝      ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
-- ██║ ╚═╝ ██║   ██║       ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
-- ╚═╝     ╚═╝   ╚═╝        ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝
]]

local lvim_config_dir = get_config_dir()
local function source(mod)
	return dofile(join_paths(lvim_config_dir, "config_files/" .. mod .. ".lua"))
end

source("lsp")
source("debug")
source("plugins")
source("keymaps")
source("snippets")
source("vim-options")
source("lvim-builtin")

-- fixes
local cmp = require('cmp')
lvim.builtin.cmp.mapping["<CR>"] = cmp.mapping.confirm({ select = true })

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
