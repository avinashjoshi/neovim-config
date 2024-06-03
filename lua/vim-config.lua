vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.wo.number = true

vim.cmd("set colorcolumn=120")

-- Navigate vim panes better
vim.keymap.set('n', '<AS-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<AS-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<AS-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<AS-l>', ':wincmd l<CR>')
