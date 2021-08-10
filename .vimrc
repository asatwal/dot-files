
" execute pathogen#infect('bundle/{}')

" load up pathogen and all bundles
call pathogen#infect()
call pathogen#helptags()

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set number
colorscheme peachpuff
" set background=dark
" colorscheme monokai solarized


" Mouse Options
set ttyfast            " Send more characters for redraws
set mouse=a            " Enable mouse use in all modes
set ttymouse=xterm2    " Set this to the name of your terminal that supports mouse codes.
                       " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm


"set paste                         " don't format when pasting
set autoindent                    " set auto indent
set tabstop=2                     " set indent to 2 spaces
set shiftwidth=2
set expandtab                     " use spaces, not tab characters
set nocompatible                  " don't need to be compatible with old vim
set relativenumber                " show relative line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set list listchars=tab:»·,trail:· " show extra space characters
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
set directory=$HOME/.vim/swapfiles// " directory for swap files
set shell=/bin/bash               " set shell to stop tmp file errors in vim


" set up some custom colors
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

" highlight the status bar when in insert mode
au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" set a map leader for more key combos
let mapleader = ','

" NERDTree
" Open NERDTree automatically on startup
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
let NERDTreeMouseMode=1
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1

" Toggle NERDTree window Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Find file in NERDTree window
nmap <leader>t :NERDTreeFind<CR>

" Close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" CTRL-P fuzzyfinder config
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<leader>f'
let g:ctrlp_dotfiles=1
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
map <silent> <leader>c :CtrlPBuffer<cr>

" use silver searcher for ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" put git status, column/row number, total lines, and percentage in status
set statusline+=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

" map git commands
map <leader>b :Gblame<cr>
map <leader>g :!clear && git log -p %<cr>
map <leader>d :!clear && git diff %<cr>

" map Silver Searcher
map <leader>a :Ag!<space>

" clear highlighted search
" noremap <C-s> :nohlsearch<CR>
noremap <space> :nohlsearch<cr>
" Permanently switching off highlight
" noremap <space> :set hlsearch! hlsearch?<cr>

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=80
endif

" vim-easymotion
let g:EasyMotion_do_mapping = 1 " Enable default mappings
" Maps Alt-[m] to easymotion
map <silent> µ <Plug>(easymotion-prefix)

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" YouCompleteMe

" The silver searcher
nnoremap K :silent grep! "\b\s?<C-R><C-W>\b"<CR>:cw<CR>:redr!<CR>

" Window make full size
map _ <c-w>_

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> ˙ <C-w><
map <silent> ∆ <C-W>-
map <silent> ˚ <C-W>+
map <silent> ¬ <C-w>>

" Maps Alt-[s,v] to horizontal and vertical split respectively
map <silent> ß :split<CR>
map <silent> √ :vsplit<CR>

" Maps Alt-[w,e] for moving previous and next window respectively
map <silent> œ <C-w><S-w>
map <silent> ∑ <C-w><C-w>

" Maps Alt-[z,x] for moving previous and next buffer respectively
map <silent> Ω :bp<CR>
map <silent> ≈ :bn<CR>

" Maps Alt-[c] for buffer list
map <silent> ç :buffers<CR>

" Maps Alt-[t] to toggle between buffers
map <silent> † :b#<CR>

" switch between current and last buffer
nmap <leader>. <c-^>

" Custom commands for handling buffers
"
" Maps Alt-[d] to delete current buffer without closing window
map <silent> ∂ :Bdelete<CR>

" Maps Alt-[a] to delete all buffers without closing window
map <silent> å :bufdo :Bdelete<CR>

" Type Ngb to jump to buffer number N (a number from 1 to 99)
" Type Ngd to delete buffer number N (a number from 1 to 99)

let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  execute "nnoremap " . c . "gl :" . "Bdelete " . c . "\<CR>"
  let c += 1
endwhile

" Airline
" Enable modified detection >
let g:airline_detect_modified = 1

" enable/disable fugitive/lawrencium integration
let g:airline#extensions#branch#enabled = 1

" Enable the list of buffers
let g:airline#extensions#bufferline#enabled = 0

" Tagbar Alt-[b]
map <silent> ∫ :TagbarToggle<CR>

" Bufferline
" scrolling with fixed current buffer position
let g:bufferline_rotate = 1
let g:bufferline_fixed_index =  1 "always second (default)


" vim-rspec
 let g:rspec_command = 'call Send_to_Tmux("be rspec {spec}\n")'

" vim-rspec mappings
map <leader>r :call RunCurrentSpecFile()<CR>
map <leader>n :call RunNearestSpec()<CR>
map <leader>l :call RunLastSpec()<CR>
map <leader>s :call RunAllSpecs()<CR>

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" vim-emmett mappings
let g:user_emmet_leader_key='<C-Y>'

"map useless key to Esc
imap § <Esc>
imap jj <Esc>


"map jf to Python Formatter
map <leader>jf :%!python -m json.tool<CR>

