vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
  {
    function()
    -- Packer can manage itself
      use 'wbthomason/packer.nvim'
      -- 中文文档
      use {
        "yianwillis/vimcdoc",
      }
      use {
        "kyazdani42/nvim-tree.lua",
        requires = {
          -- 依赖一个图标插件
          "kyazdani42/nvim-web-devicons"
        },
        config = function()
          -- 插件加载完成后自动运行 lua/conf/nvim-tree.lua 文件中的代码
          require("conf.nvim-tree")
        end
      }
      use {
        "akinsho/bufferline.nvim", 
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
          require("conf.bufferline")
        end
      }
      use 'folke/tokyonight.nvim'
    end,
    config = {
      display = {
        open_fn = require("packer.util").float
      }
    }
  }
  
)
