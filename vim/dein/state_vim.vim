if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/johan/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/johan/.vim/dein'
let g:dein#_runtime_path = '/home/johan/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/johan/.vim/dein/.cache/.vimrc'
let &runtimepath = '/home/johan/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/home/johan/.vim/dein/repos/github.com/Shougo/dein.vim,/home/johan/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/home/johan/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/johan/.vim/after'
