# syntax=docker/dockerfile:experimental

FROM debian:latest

# update and install basic tools
RUN apt-get update && apt-get upgrade
RUN apt-get -y install build-essential procps curl file git vim

# install brew
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
# update brew and install required tools
RUN brew update --auto-update && brew install fnm nvim exa bat dust ripgrep go tmux ranger
RUN fnm install 18
# setup folders
RUN mkdir /root/code && mkdir -p /root/.config
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN git clone https://github.com/d-mv/dotfiles ~/.dotfiles
# setup configs
RUN ~/.dotfiles/install.sh
RUN echo "source-file ~/.dotfiles/.tmux.conf" >> ~/.tmux.conf

# WORKDIR /root/.local/share/nvim/site/pack/packer/start/vim-hexokinase/
# RUN make hexokinase

WORKDIR /root/code


ENTRYPOINT ["bash"]

