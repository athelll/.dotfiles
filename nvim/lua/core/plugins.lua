local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'marko-cerovac/material.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use 'Mofiqul/vscode.nvim'
  use "echasnovski/mini.nvim"
  use 'tpope/vim-surround'
  use 'zefei/vim-colortuner'
  use 'ntpeters/vim-better-whitespace'
  use 'vimwiki/vimwiki'
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use {'christoomey/vim-tmux-navigator', lazy = false}
  use {'folke/noice.nvim', requires = 'MunifTanjim/nui.nvim'}
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
  use 'tpope/vim-commentary'
  use 'f-person/git-blame.nvim'
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }
  --end of plugins

  -- Put this at the end after all plugins

  if packer_bootstrap then
    require('packer').sync()
  end
end)
