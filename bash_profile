# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=/usr/local:`brew --prefix coreutils`/libexec/gnubin:$PATH:$HOME/bin
export PATH

HISTSIZE=9999

eval $(gdircolors ~/.dircolors-solarized)

alias ls='gls --color=auto'
alias dc='docker-compose'

export CC=/usr/bin/gcc

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
