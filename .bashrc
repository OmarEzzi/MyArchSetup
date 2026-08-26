[[ $- != *i* ]] && return
#1
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias c='clear'
alias ll='ls -lah --color=auto'
alias ..='cd ..'

alias s='pacman -Ss'
alias i='sudo pacman -S'
alias r='sudo pacman -Rns'
alias cls='sudo pacman -Sc'

alias iy='yay -S'
alias u='yay -Syu'

alias po='systemctl poweroff'
alias rb='systemctl reboot'
alias lo='swaymsg exit'
alias x='exit'

alias nm='nmtui'

export PATH="/home/omar/.local/bin:$PATH"