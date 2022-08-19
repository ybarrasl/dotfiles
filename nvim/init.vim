" Addtional installations ourside of vim-plug required for all plugins to work
"
" pip install pynvim jedi
"

" ####################################
" Install plugins using vim-plug
" ####################################

call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'  " for jump/go to code feature
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " code autocomplete
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'  " Airline status bar
Plug 'vim-airline/vim-airline-themes'  " Add some additional themes for the status bar
Plug 'scrooloose/nerdtree' " File explorer
Plug 'tmhedberg/SimpylFold' " Code folding

Plug 'morhetz/gruvbox' " Gruvbox Theme

call plug#end()


" ####################################
" Plugin Configurations
" ####################################
let g:deoplete#enable_at_startup = 1    " Min setting for deoplete to work

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" let g:airline_theme=<theme> " <theme> is a valid theme name



" ###################################
" General NeoVim Settings
" ###################################

" Color Scheme Config
colorscheme gruvbox
set background=dark " use dark mode
" set background=light " uncomment to use light mode

" Line Number Displays Hybrid - current line number + relative line numbers
set number               " display line number
set relativenumber       " display relative line numbers
set colorcolumn=80       " display color when line reaches the pep8 standards
set smartindent          " auto indent on new lines, see :help smartindent
set expandtab            " expanding tab to spaces
set tabstop=4            " setting tab to 4 columns
set shiftwidth=4         " setting tab to 4 columns
set showmatch            " display matching brackets or parenthesis
                                        
