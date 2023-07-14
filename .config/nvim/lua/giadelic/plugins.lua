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
  use { "hrsh7th/cmp-buffer", requires = { "hrsh7th/nvim-cmp" }, disable = true }
  use { "hrsh7th/nvim-cmp", disable = true }
  use { "hrsh7th/cmp-nvim-lsp", requires = { "hrsh7th/nvim-cmp" }, disable = true }
  use { "saadparwaiz1/cmp_luasnip", disable = true }
  use { "L3MON4D3/LuaSnip", disable = true }
  use "onsails/lspkind-nvim"
  use "windwp/nvim-autopairs"
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
  use {
    "nvim-telescope/telescope.nvim", tag = '0.1.0',
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate',
  }
  use { "ms-jpq/coq_nvim", branch = "coq" }
  use { "ms-jpq/coq.artifacts", branch = "artifacts" }
  use { "ms-jpq/coq.thirdparty", branch = "3p" }
end)

