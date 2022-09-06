# install required
apt-get update
apt-get install -y unzip locales-all git curl wget silversearcher-ag make build-essential software-properties-common
curl -fLo /etc/xdg/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install gcc go neovim tmux fzf exa bat fnm ripgrep zsh
git clone https://github.com/zsh-users/zsh-autosuggestions /etc/zsh/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting /etc/zsh/fsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# link configs
mkdir -p /root/.config/nvim && ln /etc/dotfiles/configs/coc-settings.json /root/.config/nvim/coc-settings.json
ln /etc/dotfiles/vim/single_settings.vim /etc/xdg/nvim/sysinit.vim
ln /etc/dotfiles/tmux.conf ~/.tmux.conf
ln /etc/dotfiles/single_zshrc.zshrc ~/.zshrc

# setup
eval "$(fnm env --shell=bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fnm install 16
fnm use 16
nvim --headless -c +PlugInstall +qall
nvim --headless -c +CocUpdate +qall
cd /etc/vim/plugged/vim-hexokinase && make hexokinase && cd /

tmux new -s remote -n home
