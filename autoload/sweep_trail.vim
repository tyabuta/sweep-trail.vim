
if exists('g:loaded_sweep_trail') | finish | endif
let g:loaded_sweep_trail = 1

if !exists('g:sweep_trail_enable')
    let g:sweep_trail_enable = 1
endif


function! sweep_trail#enable_toggle()
    let g:sweep_trail_enable = g:sweep_trail_enable? 0 : 1

    echo printf('g:sweep_trail_enable = %d', g:sweep_trail_enable)
    return g:sweep_trail_enable
endfunction

"
" カレントバッファの不要な末尾空白を消去する。
"
function! sweep_trail#sweep() range
    let pos = getpos(".")

    " マッチしない場合にError表示が出るのでトラップする。
    try
        let cmd = printf('%d,%ds/\s\+$//', a:firstline, a:lastline)
        execute cmd
    catch
    endtry

    call setpos(".", pos)
    echo 'clear whitespace!'
endfunction


function! sweep_trail#auto_sweep()
    if 0 == g:sweep_trail_enable | return | endif
    %call sweep_trail#sweep()
endfunction

