# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# THEME
#ZSH_THEME="robbyrussell"

# Luke's config for the Zoomer Shell

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# Add wisely, as too many plugins slow down shell startup.
plugins=(
         git
         zsh-autosuggestions
         zsh-syntax-highlighting
        )

source $ZSH/oh-my-zsh.sh

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

# UTF support 
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Vim Mode 
bindkey -v
export KEYTIMEOUT=1

# Vim-like cursor shape (works in many terminals)
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt
preexec() {
    echo -ne '\e[5 q'
}
