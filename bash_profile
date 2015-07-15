if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi

#PATH=/usr/local/bin:$PATH
#export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
