"Set hard word wrap
set wm=0
let g:wrapBool = 0
let g:spell = 0
let g:language = ""

function! ToggleWrap()
    if g:wrapBool
        let g:wrapBool = 0
        set wm=0
    else
        let g:wrapBool = 1
        set wm=2
    endif
endfunction

"Toggle spellcheck
function! SpellCheck()
    if g:spell == 0
        if exists(g:language)
            set spell spelllang=g:language
        else
            set spell spelllang=en_gb
        endif
        let g:spell = 1
    else
        set nospell
        let g:spell = 0
    endif
endfunction

"Toggle hard wrap functionality on and off
command! ToggleWrap call ToggleWrap()
"capital K functionality
command SpellCheck call SpellCheck() 
map K kJ
map j gj
map k gk
"Adds the Ctrl hjkl functionality
imap <C-j> <ESC>gja
imap <C-k> <ESC>gka
imap <C-h> <Left>
imap <C-l> <Right>

"SpellCheck init
autocmd BufNewFile,BufRead *.tex SpellCheck
autocmd BufNewFile,BufRead *.md SpellCheck
autocmd BufNewFile,BufRead *.txt SpellCheck
autocmd BufNewFile,BufRead LICENSE SpellCheck
