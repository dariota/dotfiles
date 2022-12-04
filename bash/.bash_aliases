alias enable_alert='PS1="\a$PS1"'

alias ls='ls --color=auto --group-directories-first'

alias remake='make clean && make'

alias grep='grep --color=auto'

alias get='enable_alert && sudo pacman -S'
alias uu='enable_alert && sudo pacman -Syu'
alias uuu='enable_alert && sudo pacman -Syyu'

alias oldsoc='while ! ssh oldsoc.net -t tmux a -d; do sleep 0.5; done'

alias clip='xclip -selection c'

alias commits='git log --oneline --decorate --color=always | head'

alias lol='echo "HAHAHA AREN'"'"'T YOU FUCKING HILARIOUS"'

alias dict='sdcv'

function silence() {
	$@ > /dev/null 2> /dev/null &
	disown
}
