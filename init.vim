source ~/.config/nvim/plugins.vim

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set number
set syntax=True
set bg=light

set wildmenu
set wildmode=longest:full,full

nnoremap <F8> :set hlsearch!
nnoremap Y y$
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

let g:gruvbox_contrast_light="medium"
colorscheme gruvbox

let g:airline_theme='gruvbox'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
au User AirlineAfterInit :let g:airline_section_z = "%l:%2c"
