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








# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export CLICOLOR=1
export TERM=xterm-256color


###clang llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
###nvm

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion



export LSCOLORS=cxfxcxdxbxegedabagacad
alias ls='ls -GF'



gc ()
{
    git commit -m "$*"
}

on ()
{
    touch $1
    open $1
}

if [ -d ~/homebrew ] ;then
	eval "$(~/homebrew/bin/brew shellenv)"
fi

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000
setopt inc_append_history
setopt share_history
setopt AUTO_CD
setopt AUTO_PARAM_KEYS
setopt hist_ignore_all_dups

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;36m") \
		LESS_TERMCAP_md=$(printf "\e[1;36m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		man "$@"
}

## コマンド履歴検索
function peco-history-selection() {
  BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

## コマンド履歴からディレクトリ検索・移動
#if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
#  autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
 # add-zsh-hook chpwd chpwd_recent_dirs
  #zstyle ':completion:*' recent-dirs-insert both
  #zstyle ':chpwd:*' recent-dirs-default true
  #zstyle ':chpwd:*' recent-dirs-max 1000
  #zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/chpwd-recent-dirs"
#fi
#function peco-cdr () {
  #local selected_dir="$(cdr -l | sed 's/^[0-9]* *//' | peco)"
  #if [ -n "$selected_dir" ]; then
    #BUFFER="cd ${selected_dir}"
    #zle accept-line
  #fi
#}
#zle -N peco-cdr
#bindkey '^E' peco-cdr

## カレントディレクトリ以下のディレクトリ検索・移動
function find_cd() {
  local selected_dir=$(find . -type d | peco)
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
}
zle -N find_cd
bindkey '^X' find_cd

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load Homebrew config script

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
