# eza ------------------------------------------------------------------------------------------
alias ls='eza --icons=auto'

# Long format with human-readable sizes, icons, Git status, and group directories first
alias ll='eza -lah --icons --git --group-directories-first'

# Tree view with a sensible depth of 2 levels
alias lt='eza --tree --level=2 --icons'

# Show hidden files (all) in long format
alias la='eza -lah --icons --git --all'

# Simple long format with human-readable sizes
alias l='eza -lh'

# ----------------------------------------------------------------------------------------------

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
