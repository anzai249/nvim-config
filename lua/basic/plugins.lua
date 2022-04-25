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
      -- theme
      use 'folke/tokyonight.nvim'
      -- treesitter highlight
      use { 
        'nvim-treesitter/nvim-treesitter', 
        run = ':TSUpdate',
        config = function()
          require("conf.nvim-treesitter")
        end
      }
      -- lsp config
      use {
        'neovim/nvim-lspconfig', 
        'williamboman/nvim-lsp-installer'
      }
      -- nvim-cmp
      use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
      use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
      use 'hrsh7th/cmp-path'     -- { name = 'path' }
      use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
      use 'hrsh7th/nvim-cmp'
      -- vsnip
      use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
      use 'hrsh7th/vim-vsnip'
      use 'rafamadriz/friendly-snippets'
      -- lspkind
      use 'onsails/lspkind-nvim'
    end,
    config = {
      display = {
        open_fn = require("packer.util").float
      }
    }
  }
  
)
