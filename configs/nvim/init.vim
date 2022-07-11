call plug#begin()
"Golang stuff
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Github copilot
"Plug 'github/copilot.vim'
"Markdown preview 
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"Directory structure
Plug 'preservim/nerdtree'
"Autocompletion 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Color scheme
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

"Optics
set number
colorscheme catppuccin

"Add missing imports on save
"autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" Better display for messages
set cmdheight=2

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Run rustfmt on save 
autocmd BufWritePost * silent !rustfmt <afile>

"Open directory if you just run 'nvim', and a file if thats the arg 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"Autocomplete brackets 
inoremap ` ``<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Move lines
nnoremap ,<Up>   :<C-u>silent! move-2<CR>==
nnoremap ,<Down> :<C-u>silent! move+<CR>==
xnoremap ,<Up>   :<C-u>silent! '<,'>move-2<CR>gv=gv
xnoremap ,<Down> :<C-u>silent! '<,'>move'>+<CR>gv=gv

" Remap for rename current word

 nmap rn <Plug>(coc-rename)
