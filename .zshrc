export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/dotfiles/ohmyzsh-custom"

plugins=(
  git
  ssh-agent

  python
  pip
  node
  npm
  yarn
  golang

  # Productivity Boosters
  sudo              # Press ESC twice to add sudo to previous command
  extract           # Universal archive extractor (works with .tar, .zip, .gz, etc.)
  z                 # Jump to frequently used directories
  history           # Enhanced history commands
  command-not-found # Suggests package to install for missing commands

  # Community Plugins (must be last)
  zsh-vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# User configuration -------------------------

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Starship
eval "$(starship init zsh)"
