syntax on    
set autoindent
set background=dark
set nocompatible
set number
filetype on
filetype plugin on
filetype indent on
set history=1000
set cursorline
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set smartindent
set expandtab   
set ruler
set ts=4 
set shiftwidth=4 
set showmatch
set nobackup
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=prc
set hlsearch  
set fdm=indent 
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
map <F5> :call CompileRunGcc()<CR><CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    elseif &filetype == 'sh'
        exec ":!./%"
    endif
endfunc
map <F6> :call CompileRunPy()<CR>
func! CompileRunPy()
    exec "w"
    exec "!python3 %"
endfunc

