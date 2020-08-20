# prompt
nl=$'\n'
PROMPT="%F{blue}%n%f at %F{magenta}%m%f in %F{yellow}%~%f ${nl} %B%f▷%b "

# use vim keys
source ~/.local/assets/zsh/zsh-vim-mode.plugin.zsh

# defaults
export EDITOR='/bin/nvim' 
export BROWSER='/bin/qutebrowser'
export TERMINAL='/bin/alacritty'
export XDG_DOWNLOAD_DIR="$HOME/dl"

# ncurses apps
alias lf="$TERMINAL -t files -e lf"
alias ncmpcpp="$TERMINAL -t music -e ncmpcpp"

# path
PATH=$PATH:~/.local/scripts # personal scripts
PATH=$PATH:~/.local/scripts/status
PATH=$PATH:~/.local/bin # installed binaries

# gpg signing
export GPG_TTY="$(tty)"

# wget hsts
alias wget="wget --hsts-file=~/.local/share/wget-hsts"

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
