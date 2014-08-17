command! -bar SweepTrail call sweep_trail#sweep()
nnoremap <silent> <Plug>(sweep-trail) :call sweep_trail#sweep()<CR>
" nmap <Leader>sw <Plug>(sweep-trail)

augroup plugin-sweep-trail
    autocmd!
    autocmd BufWrite * call sweep_trail#auto_sweep()
augroup END


