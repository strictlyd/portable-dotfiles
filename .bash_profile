#Global variables
export PATH=/usr/local/bin:$PATH

#unix aliases
alias ls='ls -a'
alias ll='ls -lA'

#git aliases'
alias g='git '
alias gs='git status'
alias gc='git clone'
alias glog='git log --graph --abbrev-commit --decorate --all                      --format=format:"%C(bold dim magenta)%h %C(reset)%C(bold blue)%aD %C(reset)%C(green)(%ar)%C(reset)%C(bold red)%d %n" %C(reset)%C(white)%s %C(reset)%C(dim yellow)<%aN>%C(reset)"'