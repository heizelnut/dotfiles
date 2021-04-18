# include secrets
source ~/.secrets

# prompt
nl=$'\n'
setopt PROMPT_SUBST
PROMPT='%F{blue}%n%f at %F{magenta}%m%f in %F{yellow}%~%f %B%F{green}$(gstat)%f${nl} %B▷%b '

# update the standard user dirs
xdg-user-dirs-update

# start xorg on /dev/tty1
[ $(tty) = "/dev/tty1" ] && startx
