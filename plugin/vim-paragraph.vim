"Set hard word wrap
set wm=2
let g:wrapBool = 0

function! ToggleWrap()
    if g:wrapBool
        let g:wrapBool = 0
        set wm=0
    else
        let g:wrapBool = 1
        set wm=2
    endif
endfunction
"Toggle hard wrap functionality on and off
command! ToggleWrap call ToggleWrap()
"capital K functionality
map K kJ
map j gj
map k gk
"Adds the Ctrl hjkl functionality
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>
