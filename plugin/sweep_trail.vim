
command! -bar -range=% SweepTrail    <line1>,<line2>call sweep_trail#sweep()
command! -bar SweepTrailEnableToggle call sweep_trail#enable_toggle()


nnoremap <silent> <Plug>(sweep-trail)               :SweepTrail<CR>
vnoremap <silent> <Plug>(sweep-trail-v)             :SweepTrail<CR>
nnoremap <silent> <Plug>(sweep-trail-enable-toggle) :call sweep_trail#enable_toggle()<CR>

" e.g)
" nmap <Leader>sw <Plug>(sweep-trail)
" vmap <Leader>sw <Plug>(sweep-trail-v)


augroup plugin-sweep-trail
    autocmd!
    autocmd BufWrite * call sweep_trail#auto_sweep()
augroup END


