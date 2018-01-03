filetype on
au BufNewFile,BufRead *.worker set filetype=ruby

" All of the plugins are installed with Vundle from this file.
source ~/.vim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" Source initialization files
for file in split(glob('~/.vim/init/*.vim'), '\n')
  exec 'source' file
endfor

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
