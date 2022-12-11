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

 " comment
 filetype plugin on
 " Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
