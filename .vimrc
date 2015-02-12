
"neobundle
set nocompatible
filetype off
if has('vim_starting')
    set runtimepath+=$HOME/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
    NeoBundleFetch 'Sougo/neobundle.vim'
    call neobundle#end()
endif

NeoBundle 'Shougo/neobundle.vim.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/vimshell.git'
NeoBundle 'Shougo/vimfiler.git'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'Shougo/neosnippet-snippets.git'
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'vim-scripts/L9.git'
NeoBundle 'vim-scripts/TwitVim.git'
NeoBundle 'vim-scripts/AutoComplPop.git'
NeoBundle 'vim-scripts/FuzzyFinder.git'
NeoBundle 'basyura/TweetVim.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'tpope/vim-repeat.git'
NeoBundle 'thinca/vim-showtime'
NeoBundle 'motemen/git-vim.git'
NeoBundle 'deris/columnjump.git'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'kana/vim-smartword.git'
NeoBundle 'kana/vim-operator-user.git'
NeoBundle 'kana/vim-operator-replace.git'
NeoBundle 't9md/vim-quickhl.git'
NeoBundle 'kmnk/vim-unite-giti.git'
NeoBundle 'mattn/webapi-vim.git'
NeoBundle 'mattn/emmet-vim'
"NeoBundle 'vimtaku/vim-mlh.git'
NeoBundle 'tomtom/tcomment_vim.git'
NeoBundle 'rking/ag.vim'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

"settings
filetype on
filetype plugin on
filetype indent on
colorscheme molokai

"command
set noswapfile
set hidden
set showcmd
set wildmenu
set wildmode=list,full
nnoremap <space>ss :source ~/.vimrc<cr>

"display
syntax on
set number
set ruler
set list
set listchars=tab:^\ ,trail:$
set scrolloff=10
set laststatus=2
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}%=\ %Y,\ %{&fileencoding},\ %l/%L]

"color
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=4
highlight CursorColumn ctermbg=4
highlight Cursor ctermbg=4
highlight Visual ctermfg=0 ctermbg=2
au BufRead,BufNewFile *.memo set syntax=hybrid
au BufRead,BufNewFile *.txt set syntax=hybrid

""zenkaku space
function! ZenkakuSpace()
    highlight ZenkakuSpace ctermbg=5
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

" search
set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap <space>h :set hlsearch! hlsearch?<cr>

""highlight
nmap <space>mm <Plug>(quickhl-manual-this)
xmap <space>mm <Plug>(quickhl-manual-this)
nmap <space>M <Plug>(quickhl-manual-reset))
xmap <space>M <plug>(quickhl-manual-reset))
nmap <space>ma :QuickhlManualAdd 
let g:quickhl_manual_colors = [
    \ "ctermfg=6 ctermbg=1 gui=bold guifg=#ffffff guibg=#a07040",
    \ "ctermfg=0 ctermbg=2 gui=bold guifg=#ffffff guibg=#4070a0",
    \ "ctermfg=1 ctermbg=3 gui=bold guifg=#ffffff guibg=#40a070",
    \ "ctermfg=2 ctermbg=5 gui=bold guifg=#ffffff guibg=#0070e0",
    \ "ctermfg=4 ctermbg=6 gui=bold guifg=#ffffff guibg=#007020",
    \ "ctermfg=5 ctermbg=7 gui=bold guifg=#ffffff guibg=#a07040",
    \ "ctermfg=7 ctermbg=1 gui=bold guifg=#ffffff guibg=#a07040",
    \ "ctermfg=0 ctermbg=2 gui=bold guifg=#ffffff guibg=#4070a0",
    \ "ctermfg=0 ctermbg=3 gui=bold guifg=#ffffff guibg=#40a070",
    \ "ctermfg=7 ctermbg=5 gui=bold guifg=#ffffff guibg=#0070e0",
    \ "ctermfg=0 ctermbg=6 gui=bold guifg=#ffffff guibg=#007020",
    \ "ctermfg=0 ctermbg=7 gui=bold guifg=#ffffff guibg=#a07040",
    \ ]

"tab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"edit
set autoindent
set cindent
set pastetoggle=,p
nnoremap <space>ww :w<cr>
nnoremap <space>wq :wq<cr>
nnoremap <space>qq :q<cr>
nnoremap <space>qa :qall<cr>
nnoremap U <c-r>
vnoremap <c-r> :s/    /\t/g<cr>
au BufRead,BufNewFile *.t set filetype=perl
set fileencodings=utf-8,euc-jp,iso-2022-jp-3,iso-2022-jp,euc-jisx0213,ucs-bom,eucjp-ms,cp932

""register
vnoremap ra "ay
vnoremap rs "sy
vnoremap rd "dy
vnoremap rf "fy
vnoremap rg "gy
vnoremap rh "hy
vnoremap rj "jy
vnoremap rk "ky
vnoremap rl "ly
nnoremap <space>rr :reg<cr>
nnoremap <space>ra "ap
nnoremap <space>rs "sp
nnoremap <space>rd "dp
nnoremap <space>rf "fp
nnoremap <space>rg "gp
nnoremap <space>rh "hp
nnoremap <space>rj "jp
nnoremap <space>rk "kp
nnoremap <space>rl "lp

""comment out
let g:tcommentMapLeaderOp1 = '<space>c'

""oeprator replace
nmap r <plug>(operator-replace)

""save
inoremap <c-s> <esc>:w<cr>
nnoremap <c-s> :w<cr>

""emacs keybind
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-p> <up>
inoremap <c-n> <down>
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-h> <bs>
"inoremap <c-k> <esc>d$a

cnoremap <c-f> <right>
cnoremap <c-b> <left>
cnoremap <c-p> <up>
cnoremap <c-n> <down>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-d> <del>
cnoremap <c-h> <bs>
"cnoremap <c-k> <esc>d$a

""auto complete
set complete+=k
"set complete=.,w,b,u,t,i,k
highlight Pmenu ctermbg = 7 ctermfg = 4
highlight PmenuSel ctermbg = 4 ctermfg = 7

""autocomplpop
nnoremap <space>n :NeoComplCacheDisable<cr>:AutoComplPopEnable<cr>
let g:acp_enableAtStartup = 0

""neocomplcache
"""http://vim-users.jp/2010/10/hack177/
nnoremap <space>N :AutoComplPopDisable<cr>:NeoComplCacheEnable<cr>
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_history'
\}
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"""http://vim-users.jp/2010/11/hack185/
imap <c-k> <Plug>(neosnippet_expand_or_jump)
smap <c-k> <Plug>(neosnippet_expand_or_jump)
xmap <c-k> <plug>(neosnippet_expand_or_jump)
inoremap <expr><c-g> neocomplcache#undo_completion()
inoremap <expr><c-l> neocomplcache#complete_common_string()
inoremap <expr><cr> neocomplcache#smart_close_popup() . "\<cr>"
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><c-h> neocomplcache#smart_close_popup()."\<c-h>"
inoremap <expr><bs> neocomplcache#smart_close_popup()."\<c-h>"
inoremap <expr><c-y> neocomplcache#close_popup()
inoremap <expr><c-c> neocomplcache#cancel_popup()

"""http://vim-users.jp/2011/01/hack193/
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType perl setlocal omnifunc=perlcomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""snippet
nmap <c-r> :Unite snippet<cr>
imap <c-r> <plug>(neosnippet_start_unite_snippet)
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
let g:neosnippet#snippets_directory = '~/vim/snippets'

"" bracket
inoremap {<Tab> {}<LEFT>
inoremap [<Tab> []<LEFT>
inoremap (<Tab> ()<LEFT>
inoremap <<Tab> <><LEFT>
inoremap "<Tab> ""<LEFT>
inoremap '<Tab> ''<LEFT>

inoremap {+ {};<LEFT><LEFT>
inoremap [+ [];<LEFT><LEFT>
inoremap (+ ();<LEFT><LEFT>
inoremap <+ <>;<LEFT><LEFT>
inoremap "+ "";<LEFT><LEFT>
inoremap '+ '';<LEFT><LEFT>

inoremap {F {}<LEFT>
inoremap [F []<LEFT>
inoremap (F ()<LEFT>
inoremap <F <><LEFT>
inoremap "F ""<LEFT>
inoremap 'F ''<LEFT>
inoremap {J {}<LEFT>
inoremap [J []<LEFT>
inoremap (J ()<LEFT>
inoremap <J <><LEFT>
inoremap "J ""<LEFT>
inoremap 'J ''<LEFT>

"inoremap {<c-f> {}<LEFT>
"inoremap [<c-f> []<LEFT>
"inoremap (<c-f> ()<LEFT>
"inoremap <<c-f> <><LEFT>
"inoremap "<c-f> ""<LEFT>
"inoremap '<c-f> ''<LEFT>
inoremap {<c-j> {}<LEFT>
inoremap [<c-j> []<LEFT>
inoremap (<c-j> ()<LEFT>
inoremap <<c-j> <><LEFT>
inoremap "<c-j> ""<LEFT>
inoremap '<c-j> ''<LEFT>

inoremap {<Nul> {}<LEFT>
inoremap [<Nul> []<LEFT>
inoremap (<Nul> ()<LEFT>
inoremap <<Nul> <><LEFT>
inoremap "<Nul> ""<LEFT>
inoremap '<Nul> ''<LEFT>

""dictionary
let g:skk_control_j_key = ""
let g:skk_large_jisyo = "$HOME/local/dict/SKK-JISYO.L"

"encoding
nnoremap <space>me :e ++enc=euc-jp<cr>
nnoremap <space>ms :e ++enc=shift_jis<cr>
nnoremap <space>mu :e ++enc=utf-8<cr>

"complement
"autocmd FileType python inoremap pr<Tab> print ""<LEFT>
"autocmd FileType python inoremap if<Tab> if :<LEFT>
"autocmd FileType python inoremap for<Tab> for :<LEFT>
"autocmd FileType python inoremap s<Tab> self

"buffer
nnoremap <space>bl :ls<cr>
nnoremap <space>bp :b#<cr>
nnoremap <space>bn :bn<cr>

"move
set whichwrap=b,s,h,l,<,>,[,]
set vb t_vb=
nnoremap j gj
nnoremap k gk
nnoremap J <c-d>
nnoremap K <c-u>
nnoremap <c-g> gd
nnoremap H b
nnoremap L w
nnoremap w ^
nnoremap e $
nnoremap I H
nnoremap O L
nnoremap <space>gg g;

""columnjump
nmap <c-k> <Plug>(columnjump-backward)
nmap <c-j> <Plug>(columnjump-forward)
let g:columnjump_ignore_wrapped_lines=1

""easymotion
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="@"
let g:EasyMotion_grouping=1

""smartword
nnoremap ,w <Plug>(smartword-w)
nnoremap ,b <Plug>(smartword-b)
nnoremap ,e <Plug>(smartword-e)
nnoremap ,g <Plug>(smartword-ge)

" search
set incsearch
set ignorecase
set smartcase
nnoremap <space>h :set hlsearch! hlsearch?<cr>
nnoremap # :bufdo 
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>

"open
autocmd BufEnter * execute ":lcd " . expand("%:p:h")
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \ exe "normal! g'\"" |
    \ endif
endif

""FuzzyFinder
nnoremap <space>ff :FufFile<cr>
nnoremap <space>fb :FufBuffer<cr>
nnoremap <space>fj :sp<cr><c-w>j:FufFile<cr>
nnoremap <space>fk :sp<cr>:FufFile<cr>
nnoremap <space>fl :vs<cr><c-w>l:FufFile<cr>
nnoremap <space>fh :vs<cr><c-w>h:FufFile<cr>
nnoremap <space>fJ :sp<cr><c-w>j:FufBuffer<cr>
nnoremap <space>fK :sp<cr>:FufBuffer<cr>
nnoremap <space>fL :vs<cr><c-w>l:FufBuffer<cr>
nnoremap <space>fH :vs<cr>:FufBuffer<cr>

""Unite
let g:unite_enable_start_insert = 0
nnoremap <space>uf :Unite file file/new<cr>
nnoremap <space>ub :Unite buffer<cr>
nnoremap <space>ur :Unite file_mru<cr>
nnoremap <space>ud :Unite directory_mru file<cr>
nnoremap <space>ug :Unite grep<cr>
nnoremap <space>uj :sp<cr><c-w>j:Unite file file/new<cr>
nnoremap <space>uk :sp<cr>:Unite file file/new<cr>
nnoremap <space>ul :vs<cr><c-w>l:Unite file file/new<cr>
nnoremap <space>uh :vs<cr>:Unite file file/new<cr>
nnoremap <space>uJ :sp<cr><c-w>j:Unite buffer<cr>
nnoremap <space>uK :sp<cr>:Unite buffer<cr>
nnoremap <space>uL :vs<cr><c-w>l:Unite buffer<cr>
nnoremap <space>uH :vs<cr>:Unite buffer<cr>
au FileType unite nnoremap <buffer> <esc><esc> :q<cr>
au FileType unite inoremap <buffer> <esc><esc> <esc>:q<cr>

""vimfiler
nnoremap <space>v :VimFilerBufferDir<cr>
nnoremap <space>V :VimFiler<cr>
let g:vimfiler_safe_mode_by_default = 0

""ack
nnoremap <space>a :Ack 

"window
nnoremap <space>w1 :only<cr>
nnoremap <space>wk :sp<cr>
nnoremap <space>wh :vs<cr>
nnoremap <space>wl :vs<cr><c-w>l
nnoremap <space>wj :sp<cr><c-w>j

""window move
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap W <c-w>

""window size
nnoremap <space>w0 <c-w>=
nnoremap ] 5<c-w>+
nnoremap } 5<c-w>-
nnoremap [ 5<c-w>>
nnoremap { 5<c-w><

"execute
autocmd FileType perl :nnoremap ,e :w<cr>:w !perl -cw %<cr>
autocmd FileType perl :nnoremap ,r :w<cr>:w !perl %<cr>
autocmd FileType python :nnoremap ,e :w<cr>:w !python -cw %<cr>
autocmd FileType python :nnoremap ,r :w<cr>:w !python %<cr>

"fold
set foldmethod=indent
set foldlevel=999
nnoremap <space>lf :set foldlevel=999<cr>
nnoremap <space>l0 :set foldlevel=0<cr>
nnoremap <space>l1 :set foldlevel=1<cr>
nnoremap <space>l2 :set foldlevel=2<cr>
nnoremap <space>l3 :set foldlevel=3<cr>

"twitvim
let twitvim_count=100
let twitvim_browser_cmd = "open -a Firefox"
nnoremap <space>tt :vs<cr>:FriendsTwitter<cr>:q<cr>
nnoremap <space>tl :ListTwitter r<cr>
nnoremap <space>t@ :RepliesTwitter<cr>
nnoremap <space>tp :PosttoTwitter<cr>
nnoremap <space>tu :UserTwitter 
nnoremap <space>tn :NextTwitter<cr>
nnoremap <space>td :DMTwitter<cr>
nnoremap <space>tb :BackTwitter<cr>
nnoremap <space>tr :RefreshTwitter<cr>
nnoremap <space>ts :SearchTwitter 

"dictionary
nnoremap <space>d :Ref alc<Space>

"for crontab
set backupskip=/tmp/*,/private/tmp/*

"shell
call unite#custom_default_action('vimshell/history', 'insert')
nnoremap <space>ww :setlocal wrap!<cr>
nnoremap <space>sh :VimShell<cr>
nnoremap <space>sl :vs<cr><c-w>l:VimShell<cr>
nnoremap <space>sk :sp<cr>:VimShell<cr>
nnoremap <space>sj :sp<cr><c-w>j:VimShell<cr>

"git
nnoremap <space>G :Git 
nnoremap <space>ga :Gwrite<cr>
nnoremap <space>gc :Unite giti/branch<cr>
nnoremap <space>gC :Gwrite<cr>:Gcommit -v<cr>
nnoremap <space>gs :Gstatus<cr>
nnoremap <space>gb :Gblame<cr>
nnoremap <space>gl :Unite giti/log<cr>
nnoremap <space>gd :GitDiff<cr>
nnoremap <space>ge :Gedit 
nnoremap <space>gS :GitStatus<cr>
nnoremap <space>gB :GitBlame<cr>

"startify
let g:startify_custom_indices = ['a', 's', 'd', 'f', 'l', 'g', 'h', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'z', 'x', 'c', 'v', 'b', 'n', 'm']
let g:startify_bookmarks = [
  \ '~/vim/.vimrc',
  \ ]

"MultipleCursorsFind
nnoremap <space>mf :MultipleCursorsFind 
vnoremap <space>mf :MultipleCursorsFind 
vnoremap <space>M "vy:MultipleCursorsFind <c-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<cr><cr>

