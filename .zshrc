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
alias inc='cd ~/Desktop/Inception'






# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# 直前のコマンドの重複を削除
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# 同時に起動したzshの間でヒストリを共有
setopt share_history

# 補完機能を有効にする
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補を詰めて表示
setopt list_packed

# 補完候補一覧をカラー表示
autoload colors
zstyle ':completion:*' list-colors ''

# コマンドのスペルを訂正
setopt correct
# ビープ音を鳴らさない
setopt no_beep

# ディレクトリスタック
DIRSTACKSIZE=100
setopt AUTO_PUSHD

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# プロンプトカスタマイズ
PROMPT='
[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}$%f '
