# Path to Doom Emacs binaries
set -gx PATH "$HOME/.config/emacs/bin" $PATH

set -gx PATH "$HOME/.cargo/bin" $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# For starship
starship init fish | source

# For locale 
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# Fish settings
set -g fish_greeting ""  # Disable welcome message
set -gx EDITOR nvim      # Default editor

# Aliases
alias ff="fastfetch"
alias nf="neofetch"
alias emacs="emacs -nw"
alias code="tmux new nvim"
alias vim="nvim"
alias move="tmux move-window -s"
#alias l="ls -lah"
alias l="exa -la"
alias ls="exa --grid --icons"
