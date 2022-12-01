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


