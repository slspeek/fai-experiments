" Syntax highlighting
syntax enable
" Set tabstop to 2
set ts=2
" Set the shiftwidth to 2
set shiftwidth=2
" Automatically expand tabs into spaces
set expandtab
" Automatically indent sources
set autoindent
set smartindent
" Capitalize en decapitalize with ~ and a motion command
set tildeop
" In case vi does not see it properly, state that we use a
" dark background
set background=dark
" Highlight all search results
set hlsearch
" Ignore case when search phrase is all lower
set ignorecase
set smartcase
" Set incremental search
set incsearch
" Ensure x lines around cursor
set scrolloff=2
" Treat *.module files as PHP files (for Drupal)
au BufRead,BufNewFile *.module setfiletype php
" Treat *.engine files as PHP files (for Drupal)
au BufRead,BufNewFile *.engine setfiletype php
" Treat *.inc files as PHP files (for Drupal)
au BufRead,BufNewFile *.inc setfiletype php
" Treat *.theme files as PHP files (for Drupal)
au BufRead,BufNewFile *.theme setfiletype php
" Syntax highlight SQL queries in your PHP
let php_sql_query = 1
" Turn on folding for PHP sources 
let php_folding = 1
" Filetype specific plugins on
filetype plugin on
" Filetype plugin html.vim uses lower case
let html_tag_case = 'lowercase'
" Command abbreviation 'Php Check', to check the PHP-syntax
cabbr pc !php -l %
" Define a shortcut for the 'usage' function
abbrev #u function usage() {if [ ${#@} -gt 0 ]; then echo "$0: usage $0";fi}
" Insert shebang
abbrev !b #!/bin/bash
" Execute
map <c-e> :!./%<cr>
" Make exec
map <c-x> :!chmod +x %<cr>
map! :wq :wq
map #2 :!vim ~/.vimrc
map! #2 :!vim ~/.vimrc
map O1;2Q :source ~/.vimrc
" [F8] Write (not in paste mode)
map #8 :w<cr>
imap #8 <esc>:w<cr>
cmap #8 <esc><esc>:w<cr>
" [F9] Toggle paste mode
set pastetoggle=#9
" [S-F3] Insert
cmap <t_F3> $(!!)
" [S-F8] Setup quit no save [S-F8]
map <t_F8> :q!
imap <t_F8> <esc>:q!
cmap <t_F8> <esc><esc>:q!
" Turn off highlighted matches until next search
map <leader>h :nohls
" Toggle displaying eol and tab as $ and ^i
map <leader>l :set invlist
" Toggle line wrap
map <leader>w :set invwrap
set sidescroll=1
