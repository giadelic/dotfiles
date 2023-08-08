vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt_local.signcolumn = 'number'
vim.opt.termguicolors = false
vim.opt.list = true
vim.opt.listchars = { space = '•' }

-- indents
vim.opt.autoindent = true
vim.opt.smartindent = true

local function indent(count)
  vim.opt.tabstop = count
  vim.opt.expandtab = true
  vim.opt.shiftwidth = count
  vim.opt.softtabstop = count
end

indent(2)

-- vim.cmd("colorscheme fahrenheit")
vim.cmd("colorscheme firewatch") -- only without termguicolors
