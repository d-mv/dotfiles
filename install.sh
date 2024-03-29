ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vim
mkdir  ~/.config/nvim/autoload

cp ~/.vim/autoload/plug.vim  ~/.config/nvim/autoload/plug.vim

ln -s ~/.dotfiles/vimrc ~/.vimrc
# ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/vimrc ~/.config/nvim
ln -s ~/.dotfiles/vim/coc-settings.json ~/.vim/coc-settings.json
ln -s ~/.dotfiles/vim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -s ~/.dotfiles/nvim/ftdetect ~/.vim/ftdetect

npm i -g jsonlint

brew install bat git-delta ripgrep the_silver_searcher exa fd dust fnm nvim

vim -c PlugInstall
nvim -c PlugInstall
