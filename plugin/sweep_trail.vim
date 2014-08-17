
command! -bar SweepTrail             call sweep_trail#sweep()
command! -bar SweepTrailEnableToggle call sweep_trail#enable_toggle()


nnoremap <silent> <Plug>(sweep-trail)               :call sweep_trail#sweep()<CR>
nnoremap <silent> <Plug>(sweep-trail-enable-toggle) :call sweep_trail#enable_toggle()<CR>

" e.g)
" nmap <Leader>sw <Plug>(sweep-trail)

augroup plugin-sweep-trail
    autocmd!
    autocmd BufWrite * call sweep_trail#auto_sweep()
augroup END


