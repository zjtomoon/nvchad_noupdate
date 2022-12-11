"===
"=== Editor config
"===
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"set list
syntax on
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030
set number
set relativenumber
set cursorline
set backspace=indent,eol,start
set splitbelow
set splitright
set wrap
set showcmd
set wildmenu
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set hlsearch
exec "nohlsearch"
set incsearch
"ignore uppercase and lowercase
set ignorecase
set smartcase
set completeopt=longest,noinsert,menuone,noselect,preview
set previewheight=5
set scrolloff=5

" ===
" " === Terminal Behaviors
" " ===
 let g:neoterm_autoscroll = 1
 tnoremap <C-N> <C-\><C-N>
 tnoremap <C-O> <C-\><C-N><C-O>
 let g:terminal_color_0  = '#000000'
 let g:terminal_color_1  = '#FF5555'
 let g:terminal_color_2  = '#50FA7B'
 let g:terminal_color_3  = '#F1FA8C'
 let g:terminal_color_4  = '#BD93F9'
 let g:terminal_color_5  = '#FF79C6'
 let g:terminal_color_6  = '#8BE9FD'
 let g:terminal_color_7  = '#BFBFBF'
 let g:terminal_color_8  = '#4D4D4D'
 let g:terminal_color_9  = '#FF6E67'
 let g:terminal_color_10 = '#5AF78E'
 let g:terminal_color_11 = '#F4F99D'
 let g:terminal_color_12 = '#CAA9FA'
 let g:terminal_color_13 = '#FF92D0'
 let g:terminal_color_14 = '#9AEDFE'
"
"===
"=== keymap
"===
let g:mapleader=" "
map s <nop>
map S :w<CR>
map Q :q<CR>
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
"move between splited windows
map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
"switch between the labels
map tb :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

"change the size of splited window
map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize -5<CR>
map <LEADER><right> :vertical resize+5<CR>
"down-search and up-serch
noremap = nzz
noremap - Nzz
nmap <LEADER>t :sp<CR> :term<CR>
nmap tt :NERDTree<CR>
nmap te :CocCommand explorer<CR>
nmap bc <C-o>
noremap r :call CompileRun()<CR>
function CompileRun()
		exec "w"
		if &filetype == 'c'
			exec "!g++ % -o %<"
			:sp
			:term ./%<
		elseif &filetype == 'cpp'
			exec "!g++ % -wall -o %<"
			:sp
			:term ./%<
		elseif &filetype == 'sh'
			:!time bash %
		elseif &filetype == 'go'
			set splitbelow
			:sp
			:term go run .
		elseif &filetype == 'rust'
			set splitbelow
			:sp
			:term cargo run .
		endif
endfunction

"====
"==== vim-plug 
"====
call plug#begin('~/.vim/plugged')

"language_support
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'fatih/vim-go',{'do': ':GoUpdateBinaries'}

"vim-startify
Plug 'mhinz/vim-startify'

"coc.nvim
Plug 'neoclide/coc.nvim',{'branch':'release'}

"vim-airline
Plug 'vim-airline/vim-airline'
Plug 'powerline/powerline' 

"vim-beautify
Plug 'luochen1990/rainbow'

"Editor Enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

"theCW recomended plugins


 Plug 'LoricAndre/fzterm.nvim'

 " Testing my own plugin
 " Plug 'theniceboy/vim-calc'

 " Treesitter
 "Plug 'nvim-treesitter/nvim-treesitter'
 "Plug 'nvim-treesitter/playground'

 " Pretty Dress
 Plug 'theniceboy/nvim-deus'
 "Plug 'arzg/vim-colors-xcode'

 " Status line
 Plug 'theniceboy/eleline.vim'
 Plug 'ojroques/vim-scrollstatus'

 " General Highlighter
 Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
 Plug 'RRethy/vim-illuminate'

 " File navigation
 "Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
 "Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'junegunn/fzf.vim'
 "Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
 Plug 'kevinhwang91/rnvimr'
 Plug 'airblade/vim-rooter'
 Plug 'pechorin/any-jump.vim'

 " Taglist
 Plug 'liuchengxu/vista.vim'


  " Auto Complete
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'neoclide/coc.nvim', {'branch': 'release', 'tag': 'v0.0.79'}
  Plug 'wellle/tmux-complete.vim'

  " Snippets
  " Plug 'SirVer/ultisnips'
  Plug 'theniceboy/vim-snippets'

  " Undo Tree
  Plug 'mbbill/undotree'

  " Git
  Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
  Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
  "Plug 'mhinz/vim-signify'
  Plug 'airblade/vim-gitgutter'
  Plug 'cohama/agit.vim'
  Plug 'kdheepak/lazygit.nvim'

  " Autoformat
  Plug 'google/vim-maktaba'
  Plug 'google/vim-codefmt'



  " HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
  Plug 'elzr/vim-json'
  Plug 'neoclide/jsonc.vim'

  " Go
  Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }

      " Markdown
  Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
  Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for':['text', 'markdown', 'vim-plug'] }
  Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
  Plug 'dkarter/bullets.vim'

  " Other filetypes
  " Plug 'jceb/vim-orgmode', {'for': ['vim-plug', 'org']}

  " Editor Enhancement
  "Plug 'Raimondi/delimitMate'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mg979/vim-visual-multi'
  Plug 'tomtom/tcomment_vim' " in <space>cn to comment a line
  Plug 'theniceboy/antovim' " gs to switch
  Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
  Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
  Plug 'junegunn/vim-after-object' " da= to delete what's after =
  Plug 'godlygeek/tabular' " ga, or :Tabularize <regex> to align
  Plug 'tpope/vim-capslock'	" Ctrl+L (insert) to toggle capslock
  Plug 'easymotion/vim-easymotion'
  " Plug 'Konfekt/FastFold'
  "Plug 'junegunn/vim-peekaboo'
  "Plug 'wellle/context.vim'
  Plug 'svermeulen/vim-subversive'
  Plug 'theniceboy/argtextobj.vim'
  Plug 'rhysd/clever-f.vim'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'theniceboy/pair-maker.vim'
  Plug 'theniceboy/vim-move'
  " Plug 'jeffkreeftmeijer/vim-numbertoggle'
  "Plug 'Yggdroot/indentLine'

  " For general writing
  " Plug 'junegunn/goyo.vim'
  "Plug 'reedes/vim-wordy'
  "Plug 'ron89/thesaurus_query.vim'

  " Bookmarks
  " Plug 'MattesGroeger/vim-bookmarks'

  " Find & Replace
  Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }

  " Documentation
  "Plug 'KabbAmine/zeavim.vim' " <LEADER>z to find doc

  " Mini Vim-APP
  "Plug 'jceb/vim-orgmode'
  "Plug 'mhinz/vim-startify'
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'

  " Vim Applications
  Plug 'itchyny/calendar.vim'

  " Other visual enhancement
  Plug 'luochen1990/rainbow'
  Plug 'mg979/vim-xtabline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'wincent/terminus'

  " Other useful utilities
  Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite
  " Plug 'makerj/vim-pdf'
  "Plug 'xolox/vim-session'
  "Plug 'xolox/vim-misc' " vim-session dep

  " Dependencies
  " Plug 'MarcWeber/vim-addon-mw-utils'
  " Plug 'kana/vim-textobj-user'
  " Plug 'roxma/nvim-yarp

call plug#end()

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
color desert
"vim-plug plugins config
"
"vim-go
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0

"NERDTree
"map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ===
" " === vim-easymotion
" " ===
 let g:EasyMotion_do_mapping = 0
 let g:EasyMotion_do_shade = 0
 let g:EasyMotion_smartcase = 1

" ===
" " === xtabline
" " ===
 let g:xtabline_settings = {}
 let g:xtabline_settings.enable_mappings = 0
 let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
 let g:xtabline_settings.enable_persistance = 0
 let g:xtabline_settings.last_open_first = 1
 noremap to :XTabCycleMode<CR>
 noremap \p :echo expand('%:p')<CR

"========================================================================================================================================



"coc-extensions
let g:coc_global_extensions = [
	\'coc-marketplace',
	\'coc-snippets',
	\'coc-prettier',
	\'coc-vimlsp',
	\'coc-go',
	\'coc-rust-analyzer',
	\'coc-cmake',
	\'coc-clangd',
	\'coc-omnisharp',
	\'coc-sql',
	\'coc-sh',
	\'coc-html',
	\'coc-css',
	\'coc-tsserver',
	\'coc-angular',
	\'@yaegassy/coc-volar',
	\'@yaegassy/coc-volar-tools',
	\'coc-vetur',
	\'coc-json',
	\'coc-explorer']

"coc-settings
let g:coc_disable_startup_warning = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"coc recommended config
"==========================================================================================================
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
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
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
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
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

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
"============================================================================================================

