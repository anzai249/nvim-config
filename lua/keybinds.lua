-- leader 键设置为空格                                    
vim.g.mapleader = " "    
    
-- 重新引用默认的键位
vim.keybinds = {    
    gmap = vim.api.nvim_set_keymap,    
    bmap = vim.api.nvim_buf_set_keymap,    
    dgmap = vim.api.nvim_del_keymap,    
    dbmap = vim.api.nvim_buf_del_keymap,    
    opts = {noremap = true, silent = true}    
}

-- nvim-tree
-- 按 leader 1 打开文件树
vim.keybinds.gmap("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", vim.keybinds.opts)
-- 按 leader fc 在文件树中找到当前以打开文件的位置
vim.keybinds.gmap("n", "<leader>fc", "<cmd>NvimTreeFindFile<CR>", vim.keybinds.opts)
-- 默认按键
-- o     ：打开目录或文件
-- a     ：新增目录或文件
-- r     ：重命名目录或文件
-- x     ：剪切目录或文件
-- c     ：复制目录或文件
-- d     ：删除目录或文件
-- y     ：复制目录或文件名称
-- Y     ：复制目录或文件相对路径
-- gy    ：复制目录或文件绝对路径
-- p     ：粘贴目录或文件
-- s     ：使用系统默认程序打开目录或文件
-- <Tab> ：将文件添加到缓冲区，但不移动光标
-- <C-v> ：垂直分屏打开文件
-- <C-x> ：水平分屏打开文件
-- <C-]> ：进入光标下的目录
-- <C-r> ：重命名目录或文件，删除已有目录名称
-- -     ：返回上层目录
-- I     ：切换隐藏文件/目录的可见性
-- H     ：切换点文件的可见性
-- R     ：刷新资源管理器
-- 另外，文件资源管理器操作和操作文档方式一致，可按 / ? 进行搜索


-- bufferline 左右Tab切换
vim.keybinds.gmap("n", "<C-h>", ":BufferLineCyclePrev<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-l>", ":BufferLineCycleNext<CR>", vim.keybinds.opts)

local pluginKeys = {}

-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(mapbuf)
  -- rename
  mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', vim.keybinds.opts)
  -- code action
  mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', vim.keybinds.opts)
  -- go xx
  mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', vim.keybinds.opts)
  mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', vim.keybinds.opts)
  mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', vim.keybinds.opts)
  mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', vim.keybinds.opts)
  mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', vim.keybinds.opts)
  -- diagnostic
  mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', vim.keybinds.opts)
  mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', vim.keybinds.opts)
  mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', vim.keybinds.opts)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', vim.keybinds.opts )
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

return pluginKeys