let matleader = ','
let g:mapleader = ','
" YouCompleteMe {
    let g:ycm_error_symbol = '**'
    let g:ycm_warning_symbol = '??'
    " let g:ycm_python_interpreter_path = ''
    " let g:ycm_python_sys_path = []
    " let g:ycm_extra_conf_vim_data = [
    "   \  'g:ycm_python_interpreter_path',
    "   \  'g:ycm_python_sys_path'
    "   \]
    " let g:ycm_global_ycm_extra_conf = '~/.vim/global_extra_conf.py'    

    " " let g:ycm_autoclose_preview_window_after_completion = 1
    " " let g:ycm_autoclose_preview_window_after_insertion = 1
    " let g:ycm_add_preview_to_completeopt = 0
    set completeopt-=preview
    " "youcompleteme  默认tab  s-tab 和自动补全冲突
    " "let g:ycm_key_list_select_completion=['<c-n>']
    " " let g:ycm_python_binary_path = 'python'
    " " let g:ycm_key_list_select_completion = ['<Down>']
    " "let g:ycm_key_list_previous_completion=['<c-p>']
    " " let g:ycm_key_list_previous_completion = ['<Up>']
    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
    let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
    let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
    " let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
    " 开启语法关键字补全
    let g:ycm_seed_identifiers_with_syntax = 1
    " 回车作为选中
    let g:ycm_key_list_stop_completion = ['<CR>']

    " "let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开

    " " 跳转到定义处, 分屏打开
    " let g:ycm_goto_buffer_command = 'horizontal-split'
    " let g:ycm_register_as_syntastic_checker = 0
    " " nnoremap <leader>hd :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
    " nnoremap <leader>kd :YcmCompleter GoToReferences<CR>
    " " nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

    " " 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
    " " old version
    " " if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
    " "     let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
    " " endif
    " " " new version
    " " if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
    " "     let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
    " " endif

    " " 直接触发自动补全 insert模式下
    " " let g:ycm_key_invoke_completion = '<C-Space>'
    " " 黑名单,不启用
    " let g:ycm_filetype_blacklist = {
    "     \ 'tagbar' : 1,
    "     \ 'gitcommit' : 1,
    "     \}
" }

" emmet {
	let g:user_emmet_leader_key = '<C-a>'
	" let g:user_emmet_mode='n'
	let g:user_emmet_install_global = 1
	" autocmd FileType html,css EmmetInstall
    let g:user_emmet_settings = {
    \     'html': {
    \         'empty_element_suffix': ' />',
    \         'snippets': {
    \             'html:5': "<!DOCTYPE html>\n"
    \                 ."<html lang=\"${lang}\">\n"
    \                 ."\t<head>\n"
    \                 ."\t\t<meta charset=\"${charset}\">\n"
    \                 ."\t\t<title></title>\n"
    \                 ."\t</head>\n"
    \                 ."\t<body>\n\t${child}|\n\t</body>\n"
    \                 ."</html>"
    \         }
    \     }
    \ }
" }

" " vim-flake8 {
"     autocmd BufWritePost *.py call Flake8()
"     autocmd WinEnter * if winnr('$') == 1 && &buftype == "quickfix" | quit | endif " 只剩一个quickfix自动关闭quickfix
" " }

" vim-powerline {
    let g:Powerline_sysbols = 'fancy'
    let g:Powerline_cache_enabled = 0

    let g:Powerline_symbols_override = {
    \     'BRANCH': [0x2213],
    \     'LINE': 'L',
    \ }
    " let g:Powerline_theme = 'solarized256'
    " let g:Powerline_colorscheme = 'solarized256'
    " let g:Powerline_stl_path_style = 'full' 
" }

" " nerdtree {
"     map <F5> :NERDTreeToggle<CR>
"     autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"     let NERDTreeShowHidden=1
"     " open a NERDTree automatically when vim starts up
"     " autocmd vimenter *.py NERDTree
"     "open a NERDTree automatically when vim starts up if no files were specified
"     autocmd StdinReadPre * let s:std_in=1
"     autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"     "open NERDTree automatically when vim starts up on opening a directory
"     autocmd StdinReadPre * let s:std_in=1
"     autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" " }

" Tagbar {
    let g:tagbar_width = 80
    let g:tagbar_autofocus = 1
    let g:tagbar_left = 0
    nmap <F3> :TagbarToggle<CR>
" }

" ctrlp {
    " 打开ctrlp搜索
    let g:ctrlp_map = '<leader>ff'
    let g:ctrlp_cmd = 'CtrlP'
    " 相当于mru功能，show recently opened files
    map <leader>fp :CtrlPMRU<CR>
    "set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
        \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
        \ }
    "\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    let g:ctrlp_working_path_mode=0
    let g:ctrlp_match_window_bottom=1
    let g:ctrlp_max_height=1
    let g:ctrlp_match_window_reversed=0
    let g:ctrlp_mruf_max=500
    let g:ctrlp_follow_symlinks=1
" }

" vim-python-pep8-indent {
    let g:python_pep8_indent_multiline_string = -1
" }

" vim-syntastic {
" }

" json-vim {
    let g:vim_json_syntax_conceal = 0
" }

