#Global variables
export PATH=/usr/local/bin:$PATH

#unix aliases
alias ls='ls -a'
alias ll='ls -lH'

#git aliases'
alias g='git '
alias gs='git status'
alias gc='git clone'
alias glog='git log --graph --abbrev-commit --decorate --all                      --format=format:"%C(bold dim magenta)%h %C(reset)%C(bold blue)%aD %C(reset)%C(green)(%ar)%C(reset)%C(bold red)%d %n" %C(reset)%C(white)%s %C(reset)%C(dim yellow)<%aN>%C(reset)"'

#tmux aliases
alias t='tmux'
alias tc='tmux new -s '
alias tn='tmux new -s '
alias tls='tmux list-session'
alias tas='tmux attach-session -t'
alias tks='tmux kill-session -t'
alias td='tmux detach'

