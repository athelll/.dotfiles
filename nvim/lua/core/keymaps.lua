vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.autoindent = true


-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true


--Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

--extra
vim.opt.cursorline = true

-- removing annoying tilde sign for blank lines
vim.opt.fillchars = { eob = ' ' }

-- syncs Tmux and Nvim to && fro navigation
vim.keymap.set('n', '<C-h>', 'TmuxNavigateLeft<CR>', {silent = true})
vim.keymap.set('n', '<C-l>', 'TmuxNavigateRight<CR>', {silent = true})
vim.keymap.set('n', '<C-j>', 'TmuxNavigateDown<CR>', {silent = true})
vim.keymap.set('n', '<C-k>', 'TmuxNavigateUp<CR>', {silent = true})

-- pure vim
vim.cmd [[ set nocompatible ]]
vim.cmd [[ filetype plugin on ]]
vim.cmd [[ syntax on ]]
vim.cmd [[ set noswapfile ]]
vim.cmd [[ let g:vimwiki_path_html = './metadata' ]]
vim.cmd [[ au BufRead,BufNewFile *.note setfiletype vimwiki ]]
