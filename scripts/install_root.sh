# install required
echo Updating and installing packages
apt-get update
apt-get install -y unzip locales-all git curl wget silversearcher-ag make build-essential software-properties-common ruby

URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install'

echo -n '- Installing brew ... '
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo Installing applications
brew install gcc go neovim tmux fzf exa bat fnm ripgrep zsh
eval "$(fnm env --shell=bash)"
echo Installing plugin manager for nvim
curl -fLo /etc/xdg/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo Installing zsh-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions /etc/zsh/zsh-autosuggestions
echo Installing fasy-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting /etc/zsh/fsh
echo Installing tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# link configs
echo Linking config files
mkdir -p /root/.config/nvim && ln /etc/dotfiles/configs/coc-settings.json /root/.config/nvim/coc-settings.json
ln /etc/dotfiles/vim/single_settings.vim /etc/xdg/nvim/sysinit.vim
ln /etc/dotfiles/tmux.conf ~/.tmux.conf
ln /etc/dotfiles/single_zshrc.zshrc ~/.zshrc

# setup
echo Install and use node
fnm install 16
fnm use 16
echo Install nvim plugins 
nvim --headless -c +PlugInstall +qall
echo Build hexokinase plugin for vim
cd /etc/vim/plugged/vim-hexokinase && make hexokinase && cd /

echo Starting tmux session
tmux new -s remote -n home
