#----------------------------------------------------------------------
# Path
#----------------------------------------------------------------------
# node.js
export NODE_PATH="/usr/local/lib/node_modules"

#----------------------------------------------------------------------
# Prompt color
#----------------------------------------------------------------------
autoload colors
colors
setopt prompt_subst
. ${HOME}/dotfiles/git-prompt.sh
#PROMPT="%{${fg[blue]}%}[%n@%m:%1~] %(!.#.$) %{${reset_color}%}"
PROMPT="%1~ %(!.#.$) %{${reset_color}%} "
PROMPT2="%{${fg[blue]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [n,y,a,e]? %{${reset_color}%}"
RPROMPT="%{${fg[yellow]}%}[%~]%{${reset_color}%}"

#----------------------------------------------------------------------
# general
#----------------------------------------------------------------------
# auto change directory
setopt auto_cd

# auto directory pushd that you can get dirs list by cd -[tab]
setopt auto_pushd

# command correct edition before each completion attempt
setopt correct

# compacked complete list display
setopt list_packed

# no remove postfix slash of command line
setopt noautoremoveslash

# no beep sound when complete list displayed
setopt nolistbeep

# emacs like keybind (e.x. Ctrl-a goes to head of a line and Ctrl-e goes to end of it)
bindkey -e

#----------------------------------------------------------------------
# historical backward/forward search with linehead string binded to ^P/^N
#----------------------------------------------------------------------
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end

#----------------------------------------------------------------------
# Command history configuration
#----------------------------------------------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_dups # ignore duplication command history list
setopt share_history # share command history data

#----------------------------------------------------------------------
# Completion configuration
#----------------------------------------------------------------------
fpath=(${HOME}/dotfiles/zsh/functions/Completion ${fpath})
autoload -U compinit
compinit

#----------------------------------------------------------------------
# zsh editor
#----------------------------------------------------------------------
autoload zed

#----------------------------------------------------------------------
# Alias configuration
#----------------------------------------------------------------------
# expand aliases before completing
setopt complete_aliases # aliased ls needs if file/dir completions work

alias where="command -v"
alias j="jobs -l"
alias du="du -h"
alias df="df -h"
alias su="su -l"
# ls
alias ls="ls -G -w"
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias lla="ls -la"

# emacs
#alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

#----------------------------------------------------------------------
# set terminal title including current directory
#----------------------------------------------------------------------
precmd() {
    echo -ne "\033]0;${PWD}\007"
}

#----------------------------------------------------------------------
# Prediction configuration
#----------------------------------------------------------------------
#autoload predict-on
#predict-on

# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### neovim
# http://giginet.hateblo.jp/entry/2015/11/24/203823
export XDG_CONFIG_HOME=~/.config

ZSH_THEME="steeef"
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"



# http://tkengo.github.io/blog/2013/05/12/zsh-vcs-info/
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u(%b)%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
