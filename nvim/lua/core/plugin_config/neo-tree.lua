vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("neo-tree").setup()
vim.keymap.set('n', '<c-n>', ':Neotree toggle<CR>')
