# My bash profile in MacOS
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias l='ls'
alias lah='ls -lah'
alias ll='ls -la'
alias ..='cd ../'
alias ~='cd ~'
alias gocfe='cd ~/workspace/gitlab/goc-fe/'
alias orm='cd ~/workspace/gitlab/goc-fe/orm/'
alias gpass='cd ~/workspace/gitlab/goc-fe/goc-passport/'
alias failure='cd ~/workspace/gitlab/goc-fe/orm-failure/'
alias emergency='cd ~/workspace/gitlab/goc-fe/orm-emergency/'
alias apmx='cd ~/workspace/gitlab/goc-fe/apmx/'

alias gclone='git clone'
alias gadd='git add'
alias gcm='git commit'
alias gbr='git branch'
alias gpl='git pull'
alias gpsh='git push'
alias gmrg='git merge'
alias gstt='git status'
alias gdiff='git diff'
alias gstash='git stash'
alias grebase='git rebase'
alias gck='git checkout'
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[35m\]\$(parse_git_branch)\[\033[00m\] $ "
