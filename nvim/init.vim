call plug#begin()

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ervandew/supertab'
call plug#end()

filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType php setlocal expandtab
autocmd FileType php setlocal tabstop=2
autocmd FileType php setlocal shiftwidth=2
autocmd FileType php setlocal autoindent
autocmd FileType php setlocal smartindent


let g:deoplete#enable_at_startup=1
set number

nmap <C-p> :FZF<CR>
