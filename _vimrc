
" ### Note
" From https://github.com/junegunn/vim-plug
" From https://hackmd.io/s/HJv9naEwl
" 設定plugin放的位置， 避免用 標準的Vim目錄名，像是plugin的名字
" - Avoid using standard Vim directory names like 'plugin'
"
" ### Hotkey setup
"   * F4 = line number toggle
"   * F5 = NERDTree
"   * w  = easymotion
"
" ### Config  
" for  LINUX
" call plug#begin('~/.vim/plugged')
" for  WIN
call plug#begin('~/vimfiles/plugged')

" On-demand loading
" File manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Set F5 hotkey
map <F5> :NERDTreeToggle<CR>

" curser moving
Plug  'easymotion/vim-easymotion'
" w
nmap w <Plug>(easymotion-bd-w)

map <F4> : set nu!<BAR>set nonu?<CR>

" vim-markdown
" --- begin config of vim-markdown
Plug 'plasticboy/vim-markdown'
" folding style pythonic
let g:vim_markdown_folding_style_pythonic = 1

" Heading level to 6
let g:vim_markdown_folding_level = 6

" TOML front matter for Hugo
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
" --- end config of vim-markdown

" vim-toml
Plug 'cespare/vim-toml' 

" color vim-moonfly-colors
Plug 'bluz71/vim-moonfly-colors'

" ime
Plug 'pi314/ime.vim'
let g:ime_toggle_english = ',,'
let g:ime_select_mode = ',m'
let g:ime_select_mode_style = 'interactive'
let g:ime_cancel_input = '<C-h>'
let g:ime_switch_submode = ';;'

set statusline=%<%{ime#mode()}%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P


call plug#end()




"### Commond Configuration
syntax on
set number
set cursorline
" 使用佈景主題。
"colorscheme ir_black
"colorscheme moonfly
" 設定字體樣式及大小。
set guifont=Monaco:h16
" set guifont=Raize:h16
set guifont=Microsoft\ YaHei\ Mono:h18
set bg=dark
set tabstop=4
set expandtab
set shiftwidth=4
set ai
set hlsearch
set smartindent
set encoding=utf-8
set fileencoding=utf-8
" menu 亂碼
source $VIMRUNTIME/delmenu.vim
language messages zh_TW.utf-8

"enable 256 colors in ConEmu on Win 
if has('win32') && !has('gui_running') && !empty($CONEMUBUILD) 
    set term=xterm 
    set t_Co=256 
    let &t_AB="\e[48;5;%dm" 
    let &t_AF="\e[38;5;%dm" 
endif 

" Color Theme
if has('gui_running')
    colorscheme moonfly
else
        colorscheme wombat256i
    endif
