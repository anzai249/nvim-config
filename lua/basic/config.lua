-- 目录后加上反斜杠 /
vim.g.nvim_tree_add_trailing = 1
-- 是否透明背景
vim.g.background_transparency = false
-- color theme
vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_sidebars = {"nvim-tree", "packer" }
vim.o.background=light

-- vscode theme
-- For dark theme
-- vim.g.vscode_style = "dark"
-- For light theme
-- vim.g.vscode_style = "light"
-- -- Enable transparent background
-- vim.g.vscode_transparent = 1
-- -- Enable italic comment
-- vim.g.vscode_italic_comment = 1
-- -- Disable nvim-tree background color
-- vim.g.vscode_disable_nvimtree_bg = true
-- vim.cmd([[colorscheme vscode]])

-- tab键为4个空格
vim.cmd[[ set ts=4 ]]
vim.cmd[[ set softtabstop=4 ]]
vim.cmd[[ set shiftwidth=4 ]]
vim.cmd[[ set expandtab ]]
