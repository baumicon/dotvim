if has("gui_macvim") && has("gui_running")
  " Fullscreen takes up entire screen
  " set fuoptions=maxhorz,maxvert

  " Command-T for CtrlP
  "macmenu &File.New\ Tab key=<D-T>
  "map <D-t> :CtrlP<CR>
  "map <D-t> :let g:ctrlp_default_input = 0<cr>:CtrlP<cr>
  "map <Leader><D-t> :let g:ctrlp_default_input = 0<cr>:CtrlPClearCache<cr>:CtrlP<cr>
  "imap <D-t> <Esc>:let g:ctrlp_default_input = 0<cr>:CtrlP<cr>

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

  " Command-Shift-F for Ack
  map <D-F> :Ack!<space>

  " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt

  " Command-Option-ArrowKey to switch viewports
  map <D-M-Up> <C-w>k
  imap <D-M-Up> <Esc> <C-w>k
  map <D-M-Down> <C-w>j
  imap <D-M-Down> <Esc> <C-w>j
  map <D-M-Right> <C-w>l
  imap <D-M-Right> <Esc> <C-w>l
  map <D-M-Left> <C-w>h
  imap <D-M-Left> <C-w>h

  macmenu &File.Close key=<nop>
  map <D-w> :CommandW<cr>
  imap <D-w> <Esc>:CommandW<CR>

  " NERDTree toggle
  map <D-N> :NERDTreeTabsToggle<CR>
  map <D-B> :BuffergatorToggle<CR>
endif

" Don't beep
set visualbell

" Start without the toolbar
set guioptions-=T

" enable scroll bars
set guioptions-=L
set guioptions+=r
set guioptions+=b

set guifont=Inconsolata-g\ for\ Powerline:h16
"set guifont=Menlo:h14
set lines=37
set columns=125

set background=light
set ruler
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

set cursorline                  " highlight current line
set cursorcolumn                " highlight current column
hi cursorline guibg=#073642     " highlight bg color of current line light:#eee8d5,#F1E1AB dark:#073642

hi! link cursorcolumn cursorline

" MiniBufExpl Colors
hi MBEVisibleActive guifg=#A6DB29 guibg=#fdf6e3
hi MBEVisibleChangedActive guifg=#F1266F guibg=#fdf6e3
hi MBEVisibleChanged guifg=#F1266F guibg=#fdf6e3
hi MBEVisibleNormal guifg=#5DC2D6 guibg=#fdf6e3
hi MBEChanged guifg=#CD5907 guibg=#fdf6e3
hi MBENormal guifg=#808080 guibg=#fdf6e3

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
