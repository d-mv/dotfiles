echo '>> installing and linking zsh config and plugins:'
echo ">> installing plugin: zsh-suggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo ">> installing plugin: zsh-history-substring-search"
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/zsh-history-substring-search
echo ">> installing plugin: fast-syntax-highlighting"
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.zsh/fsh
echo -n ">> linking..."
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
echo done
echo -n '>> linking git configs...'
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore ~/.gitignore
echo done

echo ">> installing and linking tmux config and plugins"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

echo ">> installing and linking vim/nvim configs and plugins:"
echo '>> installing plugin manager for vim'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo ">> installing plugin manager for nvim"
curl -fLo /etc/xdg/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo -n '>> linking...'
rm ~/.vimrc >>/dev/null
ln -s ~/.dotfiles/vim/vimrc.vim ~/.vimrc
rm ~/.config/nvim/init.vim >>/dev/null
ln -s ~/.dotfiles/vim/vimrc.vim ~/.config/nvim/init.vim
rm ~/.vim/coc-settings.json >>/dev/null
ln -s ~/.dotfiles/vim/coc-settings.json ~/.vim/coc-settings.json
echo done

echo -n '>> linking ranger config...'
ln -s ~/.dotfiles/ranger ~/.config/ranger
echo done

echo ">> installing app"
brew install bat git-delta ripgrep the_silver_searcher exa fd dust fnm jsonlint vim neovim gcc go tmux fzf zsh ranger
