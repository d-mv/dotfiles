function node-project {
  git init
  npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
  npx gitignore node
  npx covgen "$(npm get init.author.email)"
  npm init -y
  git add -A
  git commit -m "Initial commit"
}

# fd is like cd, but fuzzy
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -maxdepth 3 -prune -o -type d -print 2> /dev/null | grep -v 'node_modules' | grep -v 'vendor' | fzf +m) &&
  cd "$dir"
}


gsw() {
  # git switch "$@"
  get switch $(git branch | fzf)
  }

gcp() {
  git commit -m "$1" && git push
}

ni() {
  npm i "$@"
  }

nid() {
  npm i --save-dev "$@"
  }

gdiff() {
  git log --stat -p --follow "$1"
  }

# `git` wrapper:
#
#     - `git` with no arguments = `git status`; run `git help` to show what
#       vanilla `git` without arguments would normally show.
#     - `git root` = `cd` to repo root.
#     - `git root ARG...` = evals `ARG...` from the root (eg. `git root ls`).
#     - `git ARG...` = behaves just like normal `git` command.
#
function git() {
  if [ $# -eq 0 ]; then
    command git status
  elif [ "$1" = root ]; then
    shift
    local ROOT
    if [ "$(command git rev-parse --is-inside-git-dir 2> /dev/null)" = true ]; then
      if [ "$(command git rev-parse --is-bare-repository)" = true ]; then
        ROOT="$(command git rev-parse --absolute-git-dir)"
      else
        # Note: This is a good-enough, rough heuristic, which ignores
        # the possibility that GIT_DIR might be outside of the worktree;
        # see:
        # https://stackoverflow.com/a/38852055/2103996
        ROOT="$(command git rev-parse --git-dir)/.."
      fi
    else
      # Git 2.13.0 and above:
      ROOT="$(command git rev-parse --show-superproject-working-tree 2> /dev/null)"
      if [ -z "$ROOT" ]; then
        ROOT="$(command git rev-parse --show-toplevel 2> /dev/null)"
      fi
    fi
    if [ -z "$ROOT" ]; then
      ROOT=.
    fi
    if [ $# -eq 0 ]; then
      cd "$ROOT"
    else
      (cd "$ROOT" && eval "$@")
    fi
  else
    command git "$@"
  fi
}


# Convenience function for jumping to hashed directory aliases
# (ie. `j rn` -> `jump rn` -> `cd ~rn`).
function jump() {
  emulate -L zsh

  if [ $# -eq 0 ]; then
    fd
  else
    local DIR="${*%%/}"

    if [ $(hash -d|cut -d= -f1|grep -c "^${DIR}\$") = 0 ]; then
      # Not in `hash -d`: use as initial argument to fd.
      fd "$*"
    else
      cd ~"$DIR"
    fi
  fi
}

kill-by-port() 
{ kill "$(lsof -i ":$1" | tail -n 1 | awk '{ print $2 }')";
 }
