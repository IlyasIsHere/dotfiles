export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/dotfiles/ohmyzsh-custom"

plugins=(
  git
  # ssh-agent

  # python        # removed for startup speed — the CLIs ship their own completions
  # pip
  # node
  # npm
  # yarn
  # golang

  # Productivity Boosters
  sudo              # Press ESC twice to add sudo to previous command
  extract           # Universal archive extractor (works with .tar, .zip, .gz, etc.)
  z                 # Jump to frequently used directories
  history           # Enhanced history commands

  evalcache         # Cache slow `eval "$(...)"` startup scripts

  # Community Plugins (must be last)
  zsh-vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Startup performance ------------------------
zstyle ':omz:update' mode disabled   # skip the auto update-check on launch
ZSH_DISABLE_COMPFIX=true             # skip the slow insecure-directory audit (compaudit)

source $ZSH/oh-my-zsh.sh

# Load Homebrew if it exists (macOS)
if [ -x /opt/homebrew/bin/brew ]; then
    _evalcache /opt/homebrew/bin/brew shellenv zsh
fi

# User configuration -------------------------

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Starship
_evalcache starship init zsh

# Pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - zsh)"

# pnpm
export PNPM_HOME="/home/ilyas/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#

. "$HOME/.local/bin/env"

# Added by sonarqube-cli installer
export PATH="$HOME/.local/share/sonarqube-cli/bin:$PATH"
