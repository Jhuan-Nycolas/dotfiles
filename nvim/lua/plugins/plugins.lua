-- ~/.config/nvim/lua/plugins.lua
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use "nvim-lua/plenary.nvim"
    use "nvim-tree/nvim-web-devicons"
    use "MunifTanjim/nui.nvim"

    use 'lervag/vimtex'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      --  or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
          require("nvim-autopairs").setup {}
      end
    }

    use 'nvim-treesitter/nvim-treesitter'
    use 'sainnhe/sonokai'
end)
