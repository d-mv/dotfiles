# install required
apt-get update
apt-get install -y unzip locales-all git curl wget silversearcher-ag make build-essential software-properties-common
curl -fLo /etc/xdg/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install'

echo -n '- Installing brew ... '
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc go neovim tmux fzf exa bat fnm ripgrep zsh
eval "$(fnm env --shell=bash)"
git clone https://github.com/zsh-users/zsh-autosuggestions /etc/zsh/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting /etc/zsh/fsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# link configs
mkdir -p /root/.config/nvim && ln /etc/dotfiles/configs/coc-settings.json /root/.config/nvim/coc-settings.json
ln /etc/dotfiles/vim/single_settings.vim /etc/xdg/nvim/sysinit.vim
ln /etc/dotfiles/tmux.conf ~/.tmux.conf
ln /etc/dotfiles/single_zshrc.zshrc ~/.zshrc

# setup
fnm install 16
fnm use 16
nvim --headless -c +PlugInstall +qall
nvim --headless -c +CocUpdate +qall
cd /etc/vim/plugged/vim-hexokinase && make hexokinase && cd /

tmux new -s remote -n home
