# setup for iTerm
source ~/.zsh/.iterm2_shell_integration.zsh

# versions for iTerm
iterm2_print_user_vars() {
  iterm2_set_user_var rubyVersion $(ruby -v | awk '{ print $2 }')
  iterm2_set_user_var nodeVersion $(node -v)
  iterm2_set_user_var rustVersion $(cargo --version | awk '{print $2 }')
  iterm2_set_user_var rustVersion $(rustup show | awk '/rustc / { print $2 }')
  iterm2_set_user_var rustChannel $(rustup default | awk '{ print $1 }')
  }
