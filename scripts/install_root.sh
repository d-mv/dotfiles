# install required
apt-get update
apt-get install -y zsh unzip locales-all git curl wget silversearcher-ag make build-essential software-properties-common
curl -fLo /etc/xdg/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install gcc go neovim tmux fzf exa bat fnm ripgrep

# patch configs
./patch_zshprofile.sh
zsh

# link configs
mkdir -p /root/.config/nvim && ln /etc/dotfiles/configs/coc-settings.json /root/.config/nvim/coc-settings.json
ln /etc/dotfiles/vim/single_settings.vim /etc/xdg/nvim/sysinit.vim
ln /etc/dotfiles/tmux.conf /etc/tmux.conf

# setup
fnm install 16
fnm use 16
nvim --headless +PlugInstall +qall
nvim --headless +CocUpdate +qall

# tmux new -s remote -n home
