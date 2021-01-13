# prompt
nl=$'\n'
PROMPT="%F{blue}%n%f at %F{magenta}%m%f in %F{yellow}%~%f ${nl} %B%f▷%b "

# use vim keys
source ~/.local/assets/zsh/zsh-vim-mode.plugin.zsh

# include secrets
source .secrets

# defaults
export EDITOR='/bin/nvim' 
export BROWSER='/usr/bin/chromium'
export TERMINAL='/bin/alacritty'
export XDG_DOWNLOAD_DIR="$HOME/dl"
export SL_FONT='Inconsolata Nerd Font Mono:size=12'

# ncurses apps
alias ncmpcpp-gui="$TERMINAL -t music -e ncmpcpp"
alias neix-gui="$TERMINAL -t rss -e neix"
alias rtv-gui="$TERMINAL -t reddit -e rtv"

# path
PATH=$PATH:~/.local/scripts # personal scripts
PATH=$PATH:~/.local/scripts/status
PATH=$PATH:~/.local/bin # installed binaries
PATH=$PATH:~/.cargo/bin

# gpg signing
export GPG_TTY="$(tty)"

# wine directory location
export WINEPREFIX=~/wine

# wget hsts
alias wget="wget --hsts-file=~/.local/share/wget-hsts"

# aliases
alias s='sudo'
alias v='nvim'
alias e='exit'
alias c='clear'
alias ls='ls --color'
alias la='ls -la'

alias lmms='lmms -c ~/.config/lmms/.lmmsrc.xml'

# start xorg on /dev/tty1
[ $(tty) = "/dev/tty1" ] && startx
