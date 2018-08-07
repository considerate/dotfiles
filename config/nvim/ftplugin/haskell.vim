" Haskell

" ----- w0rp/ale -----
let g:airline#extensions#ale#enabled = 1
let b:ale_linters = ['hdevtools']
" let b:ale_haskell_hdevtools_executable = ['stack', 'exec', 'hdevtools', '--']
let b:ale_haskell_hdevtools_options = '-g -Wall -g -package-db -g $(stack path --snapshot-pkg-db)'
let b:ale_fixers = [{buffer -> {'command': 'brittany'}}]
nmap <leader>af <Plug>(ale_fix)
let g:ale_fix_on_save = 1
let b:ale_fix_on_save = g:ale_fix_on_save
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)<Paste>

function! ToggleFixOnSave()
    if b:ale_fix_on_save
        let b:ale_fix_on_save = 0
    else
        let b:ale_fix_on_save = 1
    endif
endfunction

nmap <leader>at :call ToggleFixOnSave()<CR>

" ----- parsonsmatt/intero-neovim -----

" Prefer starting Intero manually (faster startup times)
let g:intero_start_immediately = 0
" Use ALE (works even when not using Intero)
let g:intero_use_neomake = 0
let g:intero_window_size = 80
let g:intero_vertical_split = 1
set updatetime=1000

nnoremap <silent> <leader>iov :InteroOpen<CR>
nnoremap <silent> <leader>io :InteroOpen<CR>
nnoremap <silent> <leader>ih :InteroHide<CR>
nnoremap <silent> <leader>is :InteroStart<CR>
nnoremap <silent> <leader>ik :InteroKill<CR>

nnoremap <silent> <leader>wr :w \| :InteroReload<CR>
nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>

map <Leader>e :InteroEval<CR>
map <silent> <Leader>t <Plug>InteroGenericType
map <silent> <Leader>T <Plug>InteroType
nnoremap <silent> <Leader>ii :InteroInfo<CR>
nnoremap <silent> <leader>it :InteroTypeInsert<CR>

nnoremap <silent> <leader>jd :InteroGoToDef<CR>
nnoremap <silent> <leader>iu :InteroUses<CR>
nnoremap <leader>ist :InteroSetTargets<SPACE>

" neco-ghc
let g:necoghc_enable_detailed_browse = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

set tabstop=2
set shiftwidth=2
