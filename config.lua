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
