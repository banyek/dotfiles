"
"  Do not forget to create ~/.vim directory
"
set number                                              " Line numbering
inoremap jj <Esc>                                       " Damn touchbar
autocmd BufWritePre *.pp :%s/\s\+$//e                   " Remove whitespaes from the end of puppet file lines
autocmd BufNewFile,BufRead *.pp set filetype=ruby       " Deal *.pp files with Ruby syntax
autocmd BufNewFile,BufRead *.cf set filetype=yaml       " Deal *.cf files with yaml syntax
autocmd BufNewFile,BufRead *.toml set filetype=dosini   " Deal *.toml files with ini syntax
syntax on                                           
set nocompatible                                        " Behave as VIM not VI
filetype indent plugin on                               " Indent files
set hidden
set showcmd 
set showmatch
set hlsearch
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set cmdheight=2
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set wildmenu
set foldenable
set clipboard=unnamed
set cul
colorscheme peachpuff
set background=dark                                 
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set ruler

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* loadview
 let &t_SI = "\<Esc>]50;CursorShape=1\x7"
 let &t_SR = "\<Esc>]50;CursorShape=2\x7"
 let &t_EI = "\<Esc>]50;CursorShape=0\x7"
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set number
  autocmd BufLeave,FocusLost,InsertEnter   * set nonumber
augroup END
