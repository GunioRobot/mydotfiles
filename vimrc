syntax on
set background=dark
set scrolloff=3 " start scrolling when cursor is x lines away from top/bottom
set history=1000

set t_Co=256 " http://pjkh.com/articles/2008/07/09/osx-iterm-screen-vim-256-colors

au BufReadPost *.rake set syntax=ruby
au BufReadPost *.spec set syntax=ruby

set wildmenu
set wildmode=list:longest

set tabstop=2 " x space tab width
set autoindent " copy indentation from previous line
set smartindent " indent more based on previous line
set shiftwidth=2 " spaces to indent when auto indenting
set expandtab " use spaces when indenting

set ignorecase " ignore case when searching
set smartcase " override ignorecase when capitals are present

set tags+=tags;/

" remap movement for wrapped lines to go up one screen line as opposed to one
" line of text
map <DOWN> gj
map <UP> gk
imap <DOWN> <ESC>gja
imap <UP> <ESC>gka

set hlsearch " highlight search results

" nicer highlighting of search results
highlight Search ctermbg=yellow ctermfg=white cterm=bold

" prettier diff hilighting
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black
