# default apps
export EDITOR='/bin/nvim' 
export BROWSER='/usr/bin/chromium'
export TERMINAL='/usr/bin/foot'

# handy variables for scripts
export SL_FONT='Iosevka Nerd Font Mono:size=12'

export LC_ALL=en_US.UTF-8

# sfeed env
export SFEED_YANKER='xclip -sel clip'
export SFEED_PLUMBER='opener'

export _JAVA_AWT_WM_NONREPARENTING=1

# make alacritty monitor-agnostic
export WINIT_X11_SCALE_FACTOR=1
export WLR_NO_HARDWARE_CURSORS=1

# xdg standard directories
export XDG_RUNTIME_DIR="/run/user/$UID"
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export ANDROID_SDK_ROOT='/opt/android-sdk'

# ncurses apps
alias gncmpcpp="$TERMINAL -t music -e ncmpcpp"
alias gneix="$TERMINAL -t rss -e neix"
alias grtv="$TERMINAL -t reddit -e rtv"

# serve static websites on localhost
alias serve="python -m http.server 8080 2> /dev/null > /dev/null &"

# personal java build system
alias t="./tom"

# path
PATH=$PATH:~/.local/scripts # personal scripts
PATH=$PATH:~/.local/bin # installed binaries
PATH=$PATH:~/.cargo/bin

# gpg signing
export GPG_TTY="$(tty)"

# wine directory location
export WINEPREFIX=~/wine

# wallpaper settings
export WALLPAPER=~/art/mint-landscape.png
export WALLPAPER_MODE=zoom

# hsts settings
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
# to use inside scripts
export WGET="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"

# tput compatibility
export TERMINFO=/usr/lib/terminfo

# really short commands I type very often
alias s='sudo'
alias v='nvim'; alias sv='sudo -E nvim';
alias e='exit'
alias c='clear'
alias cm='compiler'
alias o='opener'
alias ls='ls --color'
alias la='ls -la'

alias lmms='lmms -c ~/.config/lmms/.lmmsrc.xml'
