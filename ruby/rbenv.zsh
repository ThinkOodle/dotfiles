# init according to man page
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init -)"
  export PATH="$HOME/.rbenv/bin:$PATH"
fi
