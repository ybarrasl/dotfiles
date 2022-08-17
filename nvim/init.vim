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

let g:airline_theme=gruvbox " <theme> is a valid theme name



" ###################################
" General NeoVim Settings
" ###################################

" Color Scheme Config
colorscheme gruvbox
set background=dark " use dark mode
" set background=light " uncomment to use light mode

" Line Number Displays Hybrid - current line number + relative line numbers
set number
set relativenumber
