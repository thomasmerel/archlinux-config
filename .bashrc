export VISUAL="vim"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ ! -f /tmp/temp1_input ]] && /bin/temper temp1_input
[[ ! -f /tmp/temp2_input ]] && /bin/temper temp2_input
[[ ! -f /tmp/temp3_input ]] && /bin/temper temp3_input 

alias ls='ls --color=auto'
alias la='ls -la'
alias ll='ls -ll'
alias cls='clear'
alias marabouter='sudo pacman -S'
alias wifi='nmtui'
alias p-ins='sudo pacman -S'
alias p-maj='sudo pacman -Syu'
alias p-rem='sudo pacman -R'
alias y-maj='sudo yaourt -Syua'
alias weather='curl wttr.in/Nantes'
if [[ -t 0 && $(tty) =~ /dev/tty ]] && ! pgrep -u $USER startx &> /dev/null;then
	exec startx
fi

PS1='[\u@\h \W]\$ '
