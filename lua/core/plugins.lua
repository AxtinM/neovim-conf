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

  use 'nvim-tree/nvim-tree.lua'

  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-lualine/lualine.nvim'

  use 'NvChad/nvim-colorizer.lua'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    }

  --[[ use 'ellisonleao/gruvbox.nvim' ]]
  --
  use "folke/tokyonight.nvim"

  use "lukas-reineke/indent-blankline.nvim"

  use { 'goolord/alpha-nvim',
          requires = { 'nvim-tree/nvim-web-devicons' },
          config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
          end
      }

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use 'numToStr/Comment.nvim'

  use 'JoosepAlviste/nvim-ts-context-commentstring'
  -- LSP
  use("hrsh7th/nvim-cmp") --> Autocompletion plugin

	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp

  use("tpope/vim-fugitive") --> Fugitive is the premier Vim plugin for Git

  use("lewis6991/gitsigns.nvim") --> Super fast git decorations implemented purely in lua/teal.

  use( "github/copilot.vim")  --> Github copilot 

  use 'nvim-treesitter/nvim-treesitter'

  use("saadparwaiz1/cmp_luasnip") --> Snippets source for nvim-cmp

  use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...

  use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
  -- End LSP

	use("onsails/lspkind-nvim") --> vscode-like pictograms for neovim lsp completion items

  use("L3MON4D3/LuaSnip") --> Snippets plugin

  use("ggandor/lightspeed.nvim") --> motion plugin with incremental input processing, allowing for unparalleled speed with near-zero cognitive effort

  use("rcarriga/nvim-notify")

  use {"akinsho/toggleterm.nvim"}

  use {   "windwp/nvim-autopairs",
          config = function() require("nvim-autopairs").setup {} end
      }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
