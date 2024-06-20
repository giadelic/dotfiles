local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use { "hrsh7th/nvim-cmp"}
  use { "hrsh7th/cmp-buffer", requires = { "hrsh7th/nvim-cmp" }}
  use { "hrsh7th/cmp-path", requires = { "hrsh7th/nvim-cmp" }}
  use { "hrsh7th/cmp-nvim-lsp", requires = { "hrsh7th/nvim-cmp" }}
  use { "saadparwaiz1/cmp_luasnip" }
  use { "L3MON4D3/LuaSnip" }
  use "onsails/lspkind-nvim"
  use "windwp/nvim-autopairs"
  use { "kyazdani42/nvim-web-devicons", opt = true }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate',
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use ('Tsuzat/NeoSolarized.nvim')
end)

