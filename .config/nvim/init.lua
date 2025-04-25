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

-- vim.cmd('colorscheme gruvbox')

vim.opt.autochdir=true

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>:q<cr>]])
-- vim.cmd('cnoreabbr <expr> ter getcmdtype() == ":" && getcmdline() == "ter" ? "ToggleTerm direction=float" : "ter"')
vim.cmd('cnoreabbr <expr> ter getcmdtype() == ":" && getcmdline() == "ter" ? "ToggleTerm" : "ter"')
vim.cmd('cnoreabbr <expr> dir getcmdtype() == ":" && getcmdline() == "dir" ? "Neotree" : "dir"')

vim.cmd('let g:OmniSharp_server_use_net6 = 1')

local keyset = vim.keymap.set

function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

vim.cmd [[
 highlight Normal guibg=none
 highlight NonText guibg=none
 highlight Normal ctermbg=none
 highlight NonText ctermbg=none
]]

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Tab for LSP confirm
vim.cmd('inoremap <expr> <TAB> coc#pum#visible() ? coc#_select_confirm() : "<TAB>"')

require'lualine'.setup{}

vim.keymap.set('n', '<leader>fm', '<cmd>Neotree float<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd>Neotree float git_status<cr>')
