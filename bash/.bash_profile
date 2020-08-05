#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && xinit -- :1 -nolisten tcp vt$XDG_VTNR

PATH=$PATH:/home/d/.bin
export PATH
