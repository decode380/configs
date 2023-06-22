vim.api.nvim_create_user_command('CtmInit', ':e ~/.config/nvim/lua/custom/init.lua', {})
vim.api.nvim_create_user_command('CtmPlug', ':e ~/.config/nvim/lua/custom/plugins.lua', {})
vim.api.nvim_create_user_command('CtmLsp', ':e ~/.config/nvim/lua/custom/configs/lspconfig.lua', {})
vim.opt.foldmethod = "marker"

