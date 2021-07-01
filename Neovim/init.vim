set runtimepath^=~/.vim runtimepath+=~/.vim/after
set nocompatible
filetype plugin on
set wildmode=longest,list,full
set number
set rnu
set numberwidth=1
syntax on
set foldmethod=syntax
let g:airline#extensions#tabline#enabled = 1

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators

" Use release branch (recommend)

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Vim Airline & Vim Airline Themes
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' 

"42 Header
Plug '42Paris/42header'

"Forst Night Theme
Plug 'sainnhe/everforest'

if has('termguicolors')
	set termguicolors
endif

"Dark version
set background=dark

"Set contrast
let g:everforest_background = 'hard'

"Customize the cursor color, only works in GUI clients.
let g:everforest_cursor = 'aqua'

"Whether to show |hl-EndOfBuffer|.
let g:everforest_show_eob = 1

"Some plugins support highlighting error/warning/info/hint texts, by default
"these texts are only underlined, but you can use this option to also highlight
"the background of them.
let g:everforest_diagnostic_text_highlight = 1

"Some plugins support highlighting error/warning/info/hint lines, but this
"feature is disabled by default in this color scheme. To enable this feature,
"set this option to `1`.
let g:everforest_diagnostic_line_highlight = 1

"Some plugins can use virtual text feature of neovim to display
"error/warning/info/hint information, you can use this option to adjust the
"colors of it.
let g:everforest_diagnostic_virtual_text = 'colored'

"Some plugins can highlight the word under current cursor, you can use this
"option to control their behavior.

"    Available values: `'grey background'`, `'bold'`, `'underline'`, `'italic'`
"    Default value: `'grey background'` when not in transparent mode, `'bold'`
"    when in transparent mode.
let g:everforest_current_word = 'bold'

"The loading time of this color scheme is very long because too many file types
"and plugins are optimized. This feature allows you to load part of the code on
"demand by placing them in the `after/ftplugin` directory.

"Enabling this option will reduce loading time by approximately 50%.
let g:everforest_better_performance = 1

"C Vim
Plug 'vim-scripts/c.vim'

"COC
"Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

colorscheme everforest

"Airline
let g:airline_theme = 'everforest'

" HTML Snippet/Skeleton Map
nnoremap ,html :-1read $HOME/.config/nvim/snippets/skeleton.html<CR>3jwf>a

"42-HEADER CONFIG
let $USER = 'adiaz-lo'
let $MAIL = $USER . '@student.42madrid.com'
nmap <F1> :Stdheader<CR>
