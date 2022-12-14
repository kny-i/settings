alias norm=norminette
alias ..='cd ../' 
alias ...='cd .../'  
alias ga='git add'
alias gb='git branch'
alias gcm='git commit -m'
alias gcl='git clone'
alias gch='git checkout'


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
alias cw='cc -Wall -Werror -Wextra'
alias c='clion'
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
PROMPT='%F{087}(｀▽´)%f '


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
