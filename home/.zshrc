# include secrets
source ~/.secrets

# prompt
prompt() {
	nl=$'\n'
	PROMPT="%F{blue}%n%f at %F{magenta}%m%f in %F{yellow}%~%f \
%B%F{green}$(gstat)%f%b${nl} \
%B%(?.%F{green}$%f.%F{red}$%f)%b "
}

precmd_functions+=(prompt)

setopt autocd

# update the standard user dirs
xdg-user-dirs-update

# start xorg on /dev/tty1
[ $(tty) = "/dev/tty1" ] && startx
