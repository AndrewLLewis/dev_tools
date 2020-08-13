autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
silent! close

" ========================================================================
nnoremap <Space> @q

" ========================================================================
let g:gruvbox_contrast_dark='soft'
let g:airline_theme='gruvbox'
let g:airline#extensions#gutentags#enabled = 1

function! GetRoot(path)
    return '/'
endfunction

function! g:HeaderguardName()
    let path_name = "_" . toupper(expand('%:p:h:t:gs/[^0-9a-zA-Z_]/_/g')) . "_"
    let package_name = "_" . toupper(expand('%:p:h:h:h:t:gs/[^0-9a-zA-Z_]/_/g')) ."_"
    if path_name == "_INCLUDE_"
        let path_name = ""
        let package_name = "_" . toupper(expand('%:p:h:h:t:gs/[^0-9a-zA-Z_]/_/g')) . "_"
    endif
    
    return "_" . package_name . path_name . "_" . toupper(expand('%:t:gs/[^0-9a-zA-Z_]/_/g')) . "__"
endfunction

let g:headerguard_use_cpp_comments = 1

let g:gutentags_project_root_finder='GetRoot'
let g:gutentags_project_root = ['~/Code']
let g:gutentags_cache_dir = "~/Code"
let g:gutentags_file_list_command = 'find /opt/ros/kinetic ~/Code /usr/include/boost -type f -name "*.h" -o -name "*.cpp" -o -name "*.c"'
let g:gutentags_add_default_project_roots = 0
let g:gutentags_ctags_tagfile=".tags"
let g:gutentags_ctags_auto_set_tags = 0
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_new = 1
let g:gutentags_trace = 0

set tags=/workspace/catkin_ws/.tags

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 4
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

let NERDTreeWinSize = 30
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1

let g:DoxygenToolkit_commentType = "C++"

let g:DoxygenToolkit_fileTag="\\file       "
let g:DoxygenToolkit_briefTag_pre="\\brief      "
let g:DoxygenToolkit_authorTag="\\author     "
let g:DoxygenToolkit_dateTag="\\date       "
let g:DoxygenToolkit_versionTag="\\version    "
let g:DoxygenToolkit_blockHeader="-------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------"
let g:DoxygenToolkit_authorName="Andrew L Lewis"

let g:DoxygenToolkit_licenseTag= "//////////////////////////////////////////////////////////////////\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "Software License Agreement (BSD License)\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "Copyright (c) 2017, Square Robot, Inc.\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "All rights reserved.\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "Redistribution and use in source and binary forms, with or without\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "modification, are permitted provided that the following conditions\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "are met:\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . " * Redistributions of source code must retain the above copyright\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "   notice, this list of conditions and the following disclaimer.\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . " * Redistributions in binary form must reproduce the above\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "   copyright notice, this list of conditions and the following\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "   disclaimer in the documentation and/or other materials provided\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "   with the distribution.\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . " * Neither the name of Square Robot, Inc. nor the names of its\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "   contributors may be used to endorse or promote products derived\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "   from this software without specific prior written permission.\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "\"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "POSSIBILITY OF SUCH DAMAGE.\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag= g:DoxygenToolkit_licenseTag . "//////////////////////////////////////////////////////////////////"



let g:DoxygenToolkit_endCommentBlock = "    "

let g:clang_format#detect_style_file = 1
let g:clang_format#auto_formatexpr = 1
let g:clang_format#command = "clang-format-6.0"

let g:lens#width_resize_max = 160
let g:lens#disabled_filetypes = ['nerdtree', 'fzf']

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" ========================================================================
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox', {'do': ':colorscheme gruvbox'}
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'drmikehenry/vim-headerguard'
Plug 'rhysd/vim-clang-format'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clangd-completer' }
Plug 'kgreenek/vim-ros-ycm'
Plug 'nvie/vim-flake8'
Plug 'airblade/vim-gitgutter'

call plug#end()



" ========================================================================
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set colorcolumn=80
set cino=N-s,g0,+0,(0,t0

set termguicolors
set statusline+=%F
set number
set expandtab
set hlsearch
set incsearch
syntax enable
set title
set background=dark
set scrolloff=5
set backspace=2
set wildmenu
set cursorline
set lazyredraw
set showmatch

" Use new regex engine
set re=1

" Natural splitting
set splitbelow
set splitright

set visualbell
set encoding=utf-8
set showmode
set autoread

set clipboard=unnamedplus
set cmdheight=2


nmap j gj
nmap k gk

set <F1>=<C-v><F1>
noremap <F1> :NERDTreeToggle<CR>
noremap! <F1> <Esc>:NERDTreeToggle<CR>

set <F2>=<C-v><F2>
noremap <F2> :TagbarToggle<CR>
noremap! <F2> <Esc>:TagbarToggle<CR>

silent! colorscheme gruvbox

augroup configgroup
    autocmd!
    autocmd BufWritePre *.cpp,*.py,*.h,*.txt :%s/\s\+$//e  " Strip trailing whitespace
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd VimEnter * IndentGuidesEnable
augroup END

