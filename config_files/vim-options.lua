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
