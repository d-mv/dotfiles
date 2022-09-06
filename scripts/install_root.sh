# install required
echo ">> updating and installing packages"
apt-get update
apt-get install -y unzip locales-all git curl wget silversearcher-ag make build-essential software-properties-common ruby


echo -n '>> installing brew...'
URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install'
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'done'; else echo 'NG'; fi
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo installing applications
brew install gcc go neovim tmux fzf exa bat fnm ripgrep zsh ranger
eval "$(fnm env --shell=bash)"
echo "installing plugin manager for nvim"
curl -fLo /etc/xdg/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo ">> installing zsh-suggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions /etc/zsh/zsh-autosuggestions
echo ">> installing zsh-history-substring-search"
git clone https://github.com/zsh-users/zsh-history-substring-search /etc/zsh/zsh-history-substring-search
echo ">> installing fasy-syntax-highlighting"
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting /etc/zsh/fsh
echo ">> installing tmux plugin manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo -n ">> linking nvim config..."
mkdir -p /root/.config/nvim
ln /etc/dotfiles/vim/coc-settings.json /root/.config/nvim/coc-settings.json
# TODO: change to $HOME
ln /etc/dotfiles/vim/single_settings.vim /etc/xdg/nvim/sysinit.vim
echo done
echo ">> linking tmux config..."
ln /etc/dotfiles/tmux/tmux.conf ~/.tmux.conf
echo done
# ./home/linuxbrew/.linuxbrew/opt/fzf/install
echo ">> linking ZSH config..."
rm ~/.zshrc >> /dev/null
ln /etc/dotfiles/zsh/single_zshrc.zshrc ~/.zshrc
echo done
echo -n ">> linking git configs..." && echo done
ln /etc/dotfiles/.gitignore ~/.gitignore
ln /etc/dotfiles/git/.gitconfig ~/.gitconfig
echo -n ">> linking ranger configs.."
mkdir /etc/ranger >>/dev/null
ln -s /etc/dotfiles/ranger /etc/ranger
echo done
echo ">> linking apps..."
ln /home/linuxbrew/.linuxbrew/Cellar/zsh/5.9/bin/zsh /bin/zsh
echo done
# setup
echo ">> installing and use node"
fnm install 16
fnm use 16
# echo ">> Install nvim plugins"
# nvim --headless -c +PlugInstall +qall
# echo Build hexokinase plugin for vim
# cd /etc/vim/plugged/vim-hexokinase && make hexokinase && cd /

echo Starting tmux session
tmux new -s remote -n home
