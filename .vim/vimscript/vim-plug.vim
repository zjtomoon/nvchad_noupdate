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

