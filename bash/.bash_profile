#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && xinit -- :1 -nolisten tcp vt$XDG_VTNR

PATH=$PATH:/home/d/.bin
export PATH

# OPAM configuration
. /home/d/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
