" Basics
    set nocompatible                        " Use defauts Vim
    filetype off                            " deactivate filetype for pathogen to load snipmate correctly

" Pathogen install
    call pathogen#runtime_append_all_bundles()
    call pathogen#helptags()

    filetype plugin indent on               " reactivate filetype

" filetype
    autocmd BufRead *.twig set filetype=htmltwig
    autocmd BufRead *.phps set filetype=php
    autocmd BufRead *.phpd set filetype=php
    autocmd BufRead *.less set filetype=less

" Encoding
    set ff=unix                             " Unix EOL    
    set fileencoding=UTF-8                  " Speak UTF-8
    set encoding=UTF-8                      " Display UTF-8

" Color
	syntax enable
	set background=dark                     " dark background is better!
	let php_sql_query = 1                   " SQL queries
	let php_htmlInStrings = 1               " HTML
	if has('gui_running')
		set guifont=Monospace\ 8
		let g:solarized_style="light"
		let g:solarized_contrast="high"
		colorscheme solarized
	else
		colorscheme delek
	endif

" Keymap

    " Changing leader
    let mapleader   = ","
    let g:mapleader = ","

    " Quickly edit/reload the vimrc file
    nmap <silent> <leader>ev :e $MYVIMRC<CR>
    nmap <silent> <leader>sv :so $MYVIMRC<CR>

    " Switch to paste mode to copy a large alount of text
    set pastetoggle=<4>
