alias norm=norminette
alias ..='cd ../' 
alias ...='cd .../'  
alias ga='git add'
alias gb='git branch'
alias gcm='git commit -m'
alias gcl='git clone'
alias gch='git checkout'
alias tscw='tsc --watch'

alias gd='git diff'
alias gi='git init'
alias gr='git remote'
alias grv='git remote -v'
alias grso='git remote set-url origin'
alias gl='git log'
alias gp='git push'
alias gpom='git push origin master'
alias gs='git status'
alias m='make'
alias mb='make bonus'
alias mc='make clean'
alias mf='make fclean'
alias mr='make re'
alias mrun='make run'
alias viz='vim ~/settings/.zshrc'
alias giv='cd ~/settings && gc "edit vimrcr" && gp'
alias soz='source ~/settings/.zshrc && cd ~/settings && gc "edit zshrc" && gp'
alias viv='vim ~/.vimrc'
alias cz='clion ~/settings/.zshrc'

alias sov='source ~/settings/.vimrc'
alias gcue='git config user.email kny_i@keio.jp && git config user.name kny-i'
alias go='/usr/local/go/bin/go'
alias gpsu='git push --set-upstream'
alias clang_brew=/opt/homebrew/opt/llvm@13/lib/clan
alias des='cd ~/Desktop'
alias review='cd ~/Desktop/42Tokyo/review'
alias gal='gcue && ga -A && gs && gcm "wip" && gp'
alias gala='gcue && ga -A && gs && gcm "add funcs"'
alias gald='gcue && ga -A && gs && gcm "delete funcs"'
alias gale='gcue && ga -A && gs && gcm "edit funcs"'
alias 42='cd ~/Desktop/42Tokyo'
alias clion='open -na "Clion.app" --args "$@"'
alias webstorm='open -na "Webstorm.app" --args "$@"'
alias pycharm='open -na "Pycharm.app" --args "$@"'
alias intellij='open -na "IntelliJ IDEA.app" --args "$@"'
alias cw='cc -Wall -Werror -Wextra'
alias c='clion'
alias ws='webstorm'
alias pyc='pycharm'
alias i='intellij'
alias o='open'
alias v='vim'
gc ()
{
    gcue
    git add -A
    git commit -m "$*"
}
alias cpy='pbcopy'  
alias exam='cd ~/Desktop/exam'
PROMPT='%F{087}t(-.-t)%f '
alias g++='g++-11'
alias docker_rm_all='docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null'
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
alias commit_msg='cp ~/Desktop/42Tokyo/commit_msg/commit-msg ./.git/hooks'
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2'
alias cp11='c++ -std=c++11'
alias cp17='c++ -std=c++17'
export PATH="$PATH:~/development/flutter/bin"
export flutter="~/development/flutter/bin"
export PATH="$PATH:Users/yukikondo/development/flutter/bin"
