if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias ls='ls --color=auto'

alias c 'clear'
alias ll 'ls -lah --color=auto'
alias .. 'cd ..'

alias s 'pacman -Ss'
alias i 'sudo pacman -S'
alias r 'sudo pacman -Rns'
alias cls 'sudo pacman -Sc'

alias if 'flatpak install flathub'

alias iy='yay -S'
alias u='yay -Syu'

alias po='systemctl poweroff'
alias rb='systemctl reboot'
alias lo='swaymsg exit'
alias x='exit'

alias nm='nmtui'
