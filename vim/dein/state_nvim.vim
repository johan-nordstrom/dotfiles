if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/johan/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/johan/.vim/dein'
let g:dein#_runtime_path = '/home/johan/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/johan/.vim/dein/.cache/init.vim'
let &runtimepath = '/home/johan/.config/nvim,/etc/xdg/nvim,/home/johan/.local/share/nvim/site,/home/johan/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/home/johan/.vim/dein/repos/github.com/Shougo/dein.vim,/home/johan/.vim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/johan/.vim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/home/johan/.local/share/flatpak/exports/share/nvim/site/after,/home/johan/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/johan/.config/nvim/after'
filetype off
