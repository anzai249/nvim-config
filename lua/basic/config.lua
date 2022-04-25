-- 目录后加上反斜杠 /
vim.g.nvim_tree_add_trailing = 1
-- 是否透明背景
vim.g.background_transparency = false
-- color theme
vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_sidebars = {"nvim-tree", "packer" }
vim.o.background=light
-- tab键为4个空格
vim.cmd[[ set ts=4 ]]
vim.cmd[[ set softtabstop=4 ]]
vim.cmd[[ set shiftwidth=4 ]]
vim.cmd[[ set expandtab ]]