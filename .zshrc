# Set zsh options
bindkey -v
setopt autocd
setopt rcquotes
setopt noclobber
setopt correctall
setopt histignoredups
setopt cshjunkiequotes
setopt interactivecomments

# Set aliases
alias "cat"="highlight --force --out-format=ansi"
alias "g"="git"
alias "grep"="grep --color=auto"
alias "ls"="ls -hN --color=auto --group-directories-first"
alias "mkdir"="mkdir -pv"
alias "p"="sudo pacman"
alias "r"="ranger"
alias "rm"="srm"
alias "ss"="sudo systemctl"
alias "top"="htop"
alias "v"="vim"
alias "y"="yay"

# Set shell prompt
export PS1="> %B%n%b > [%~]: "
