"Set hard word wrap
set wm=2
let g:wrapBool = 1

function! ToggleWrap()
    if g:wrapBool
        let g:wrapBool = 0
        set wm=0
    else
        let g:wrapBool = 1
        set wm=2
    endif
endfunction
"Toggle functionality on and off
command! ToggleWrap call ToggleWrap()
