# default apps
export EDITOR='/bin/nvim' 
export BROWSER='/usr/bin/chromium'
export TERMINAL='/bin/alacritty'

# handy variables for scripts
export SL_FONT='Inconsolata Nerd Font Mono:size=12'

# sfeed env
export SFEED_YANKER='xclip -sel clip'
export SFEED_PLUMBER='opener'

# make alacritty monitor-agnostic
export WINIT_X11_SCALE_FACTOR=1

# xdg standard directories
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# ncurses apps
alias gncmpcpp="$TERMINAL -t music -e ncmpcpp"
alias gneix="$TERMINAL -t rss -e neix"
alias grtv="$TERMINAL -t reddit -e rtv"

# path
PATH=$PATH:~/.local/scripts # personal scripts
PATH=$PATH:~/.local/scripts/status
PATH=$PATH:~/.local/bin # installed binaries
PATH=$PATH:~/.cargo/bin

# gpg signing
export GPG_TTY="$(tty)"

# wine directory location
export WINEPREFIX=~/wine

# hsts settings
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
# to use inside scripts
export WGET="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"

# really short commands I type very often
alias s='sudo'
alias v='nvim'; alias sv='sudo -E nvim';
alias e='exit'
alias c='clear'
alias ls='ls --color'
alias la='ls -la'

alias lmms='lmms -c ~/.config/lmms/.lmmsrc.xml'
