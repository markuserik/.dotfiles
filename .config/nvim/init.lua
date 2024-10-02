require('config.lazy')

vim.opt.backspace={'indent', 'eol', 'start'}
vim.opt.expandtab=true
vim.opt.shiftround=true
vim.opt.shiftwidth=4
vim.opt.softtabstop=-1
vim.opt.tabstop=8
vim.opt.textwidth=80
vim.opt.title=true

vim.opt.hidden=true
vim.opt.fixendofline=false
vim.opt.startofline=false
vim.opt.splitbelow=true
vim.opt.splitright=true

vim.opt.hlsearch=true
vim.opt.incsearch=true
vim.opt.laststatus=2
vim.opt.ruler=false
vim.opt.showmode=false
vim.opt.signcolumn='yes'

vim.opt.mouse='a'
vim.opt.updatetime=1000

vim.opt.number=true
vim.opt.relativenumber=true

vim.cmd('colorscheme gruvbox')

vim.opt.autochdir=true

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>:q<cr>]])
-- vim.cmd('cnoreabbr <expr> ter getcmdtype() == ":" && getcmdline() == "ter" ? "ToggleTerm direction=float" : "ter"')
vim.cmd('cnoreabbr <expr> ter getcmdtype() == ":" && getcmdline() == "ter" ? "ToggleTerm" : "ter"')
vim.cmd('cnoreabbr <expr> dir getcmdtype() == ":" && getcmdline() == "dir" ? "Neotree" : "dir"')
