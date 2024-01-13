--[[

--]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath,
    })
end                                                                                                                                                                        vim.opt.rtp:prepend(lazypath) 

local lazyOpts = {
  defaults = {
    lazy = true,
  },
  install = {
    missing = true,
    colorscheme = {'dracula'}
  }
}

require("lazy").setup("plugins")

-- See `:help vim.o`
vim.opt.fileformats=unix,dos,mac

vim.opt.autoindent = true
vim.o.expandtab = true

vim.opt.tabstop = 2
vim.o.softtabstop = 2
vim.opt.shiftwidth = 2

vim.o.hlsearch = true
-- vim.o.mouse = 'a'

vim.o.mouse = ''
-- vim.o.clipboard = 'unnamedplus'
-- vim.o.breakindent = true
vim.o.undofile = true
-- vim.o.ignorecase = true
-- vim.o.smartcase = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true

vim.opt.mouse=''

--[[
" ------------------------------------------------------------------------------
set fileformats=unix,dos,mac
set encoding=utf-8
set fileencoding=utf-8
scriptencoding=utf-8
"set fileencodings=euc-jp,cp932,iso-2022-jp
"set fileencodings=iso-2022-jp,euc-jp,cp932
set fileencodings=iso-2022-jp,utf-8,euc-jp,cp932

set ambiwidth=double
set nobackup
set backspace=""
set cursorline
set expandtab
set nofoldenable
set hlsearch
set noincsearch
set iskeyword+=-
set laststatus=2
set matchpairs+=<:>
set modeline
set modelines=5
set ruler
set showcmd
set noshowmode
set shiftwidth=2
set noshowmatch
set softtabstop=2
set tabstop=2
set noundofile

set directory=$HOME/.vim/tmp
set wildmode=longest:full
set wildmenu
set iminsert=0
set imsearch=0

set mouse-=a " Disable automatic visual mode using mouse

"set statusline=%<%F\ %y%{'['.(&fenc!=''?&fenc:&enc).'\|'.&ff.']'}\ \ %l/%L\ (%P)%m%=%{strftime(\"%Y/%m/%d\ %H:%M\")}

--]]

-- :help fo-table
-- vim.opt.formatoptions:remove('r')
vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = '*',
    command = 'set formatoptions-=ro',
})
-- vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- keymaps
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
-- vim.keymap.set('v', 'j', 'gj')
-- vim.keymap.set('v', 'k', 'gk')

--[[
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk

"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>

nnoremap Q q

nnoremap qj  :cnext<Return>
nnoremap qk  :cprevious<Return>
"nnoremap qr  :crewind<Return>
"nnoremap qK  :cfirst<Return>
"nnoremap qJ  :clast<Return>
"nnoremap qf  :cnfile<Return>
"nnoremap qF  :cpfile<Return>
"nnoremap ql  :clist<Return>
"nnoremap qq  :cc<Return>
"nnoremap qo  :copen<Return>
"nnoremap qc  :cclose<Return>
"nnoremap qw  :cwindow<Return>
"nnoremap qp  :colder<Return>
"nnoremap qn  :cnewer<Return>
"nnoremap qm  :make<Return>
"nnoremap qM  :make<Space>
"nnoremap qg  :grep<Space>
nnoremap q   <Nop>

if 1
"  let mapleader = ","
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P
endif
--]]
