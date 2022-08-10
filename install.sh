ln -s ~/.dotfiles/nvim ~/.config/nvim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/nvim/ftdetect ~/.vim/ftdetect
