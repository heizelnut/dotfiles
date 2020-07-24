# prompt
nl=$'\n'
PROMPT="%F{blue}%n%f at %F{green}%m%f in %F{yellow}%~%f ${nl} %B%F{red}▷%b%f "

# use vim keys
source ~/.local/assets/zsh/zsh-vim-mode.plugin.zsh

# defaults
EDITOR='/bin/nvim' 
BROWSER='/bin/qutebrowser'
TERMINAL='/bin/alacritty'
XDG_DOWNLOAD_DIR="$HOME/dl"

# ncurses apps
lf="$TERMINAL -t files -e lf"
ncmpcpp="$TERMINAL -t music -e ncmpcpp"
nctelegram="$TERMINAL -t Telegram -e nctelegram"

# path
PATH=$PATH:~/.local/scripts # personal scripts
PATH=$PATH:~/.local/scripts/status
PATH=$PATH:~/.local/bin # installed binaries

# gpg signing
export GPG_TTY="$(tty)"

# lf icons
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.z64=🎮:\
*.v64=🎮:\
*.n64=🎮:\
*.gba=🎮:\
*.nes=🎮:\
*.gdi=🎮:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"

# aliases
alias s='doas'
alias v='nvim'
alias e='exit'
alias c='clear'
alias ls='ls --color'
alias la='ls -la'
alias 👀='pfetch'

# start xorg on /dev/tty1
[ $(tty) = "/dev/tty1" ] && startx
