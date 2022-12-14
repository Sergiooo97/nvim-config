":::instalacion de plugins:::

call plug#begin('~/.config/nvim/plugged') 	"directorio donde se van a instalar los plugins

"PLUGINS
Plug 'joshdick/onedark.vim' 		"tema onedark
"Plug 'navarasu/onedark.nvim'
Plug 'morhetz/gruvbox'              	"tema gruvbox
Plug 'dracula/vim', { 'as': 'dracula' } "tema dracula
Plug 'Yggdroot/indentLine' 		"indentacion
Plug 'mattn/emmet-vim' 			"emmet para diseño web
Plug 'vim-airline/vim-airline'		"diseño de la barra en la cual se muestran los modos, la linea, etc.
Plug 'vim-airline/vim-airline-themes'	"temas para el vim-airline
Plug 'preservim/nerdtree'		"gestor de archivos en forma de arbol.
Plug 'christoomey/vim-tmux-navigator'	"poder navegar entre archivos abiertos
Plug 'jiangmiao/auto-pairs'		"autocompletado de llaves, corchetes, etc.
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"autocompletado inteligente
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jremmen/vim-ripgrep'
Plug 'posva/vim-vue'
Plug 'arcticicestudio/nord-vim'
Plug 'caenrique/nvim-toggle-terminal' "TERMINAL
"""Plug 'yuezk/vim-js'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'pangloss/vim-javascript'
"""Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
"""Plug 'storyn26383/vim-vue'
"Plug 'airblade/vim-rooteru'
Plug 'APZelos/blamer.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end() 			"cerramos el llamado de los plugins


"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"BUSQUEDA DE PALABRAS EN ARCHIVOS choco install ag 
    let g:ag_prg="<custom-ag-path-goes-here> --column"
    let g:ag_working_path_mode="r"
    let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git  -name vendor \) -prune -o -print'
    let $FZF_DEFAULT_OPTS="--height 70% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
    let g:fzf_layout = { 'down': '~70%' }


"CONFIGURACIONES BASICAS 
    set number 				"muestra los numeros de cada linea en la parte izquierda 
    set relativenumber 			"la distribucion de los numeros en lineas de manera relativa
    set mouse=a 				"permite la interaccion con el mouse
    set noshowmode				"me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
    syntax enable 				"activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
    set encoding=utf-8 			"permite setear la codificación de archivos para aceptar caracteres especiales
    set sw=4 				"la indentación genera 4 espacios
    set nowrap				"el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
    "set noswapfile				"para evitar el mensaje que sale al abrir algunos archivos sobre swap.
    set clipboard=unnamed			"para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.	



"CONFIGURACIÓN DEL TEMA
    set termguicolors 			"activa el true color en la terminal
    let g:onedark_config = {
        \ 'style': 'darker',
    \}
    colorscheme nord "activar el tema onedark
    let g:gruvbox_contrpast_dark = 'soft'
    let g:gruvbox_termcolors = '220'
    hi Normal ctermbg=16 guibg=#181718 
    hi LineNr ctermbg=16 guibg=#181718
   "hi Normal guibg=NONE ctermbg=NONE

"CONFIGURACIÓN DE BLAMER PARA GIT
    """let g:blamer_enabled = 1 "Habilitar
    """let g:blamer_template = '<committer>, <committer-time> • <summary>'
    """let g:blamer_show_in_visual_modes = 0

"CONFIGURACIÓN GIT 
    let g:gitgutter_sign_added = '+'
    let g:gitgutter_sign_modified = 'M'
    let g:gitgutter_sign_removed = '-'
    let g:gitgutter_sign_removed_first_line = '^'
    let g:gitgutter_sign_modified_removed = '<'
    let g:gitgutter_override_sign_column_highlight = 1
    "highlight SignColumn guibg=bg
    "highlight SignColumn ctermbg=bg 

"AUTOINDENT
    set autoindent
    set expandtab
    set tabstop=4
    set shiftwidth=4

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"TERMINAL
    nnoremap <silent> <C-t> :ToggleTerminal<Enter>
    tnoremap <silent> <C-t> <C-\><C-n>:ToggleTerminal<Enter>    
    tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
    " set
"""autocmd TermEnter term://*toggleterm#*
  """    \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
"""nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
"""inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

let g:vue_disable_pre_processors = 1
let g:vue_pre_processors = []
let g:vue_pre_processors = ['pug', 'scss']
"configuracion de emmet-vim
let g:user_emmet_leader_key=',' 	"mapeando la tecla lider por una coma, con esto se completa los tag con doble coma.
let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html', 'pug'],
      \   'script': ['javascript', 'typescript', 'coffee'],
      \   'style': ['css', 'scss', 'sass', 'less', 'stylus'],
      \   'i18n': ['json', 'yaml'],
      \   'route': 'json',
      \},
      \'full_syntax': ['json'],
      \'initial_indent': ['i18n', 'i18n.json', 'yaml'],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 1,
      \'debug': 0,
      \}
"CONFIGURACIÓN DE VIM-AIRLINE
    let g:airline#extensions#tabline#enabled = 1	"muestra la linea de pestaña en la que estamos buffer
    let g:airline#extensions#tabline#formatter = 'unique_tail'	"muestra solo el nombre del archivo que estamos modificando
    let g:gruvbox_contrast = 'hard'
    let g:gruvbox_termcolors = '200'
    let g:airline_theme='gruvbox'	"el tema de airline

"CONFIGURACIÓN DE NERDTREE (SIDEBAR)
    "mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el
    "control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
    map <C-n> :NERDTreeToggle<CR>

"MOVERSE ENTRE PESTAÑAS
    map <C-y> :bn<CR> 
    map <C-u> :bN<CR>

"CERRAR PESTAÑAS 
    map <C-p> :bdelete <CR>

"GUARDADO FORZADO DE ARCHIVO
    map <C-s> :w!<CR>

"DESHACER CAMBIOS
    map <C-z> :u<CR>

"REHACER CAMBIOS
    map <C-q> :redo<CR>

"BUSQUEDA DE ARCHIVOS
    map <C-o> :Files<CR>
    map <C-w> :Ag<CR>

"Buscar palabras dentro de los archivos :Ag
map <"TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms cd= 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
   "   \ pumvisible() ? "\<C-;>" :
  "    \ <SID>check_back_space() ? "\<TAB>" :
 "     \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>" 
"function! s:check_back_space() abort
  "let col = col('.') - 1
 " return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <C-w> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-r> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-r coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
