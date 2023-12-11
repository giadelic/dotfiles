local opts = { noremap = true, silent = true }

-- Shorten func
local keymap = vim.api.nvim_set_keymap

keymap("n", "<Space>c", ":nohlsearch<CR>", opts)
keymap('n', 'ff', ':Telescope find_files<CR>', opts)
keymap('n', 'fg', ':q!<CR>', opts)
keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
keymap('n', '<Space>d', '<Cmd>lua vim.diagnostic.open_float(0)<CR>', opts)
-- keymap('n', '<Space>d', '<Cmd>lua vim.diagnostic.open_float(0, {scope = "cursor"})<CR>', opts)

-- s/^/(comment symbol)<C-LeftRelease>
