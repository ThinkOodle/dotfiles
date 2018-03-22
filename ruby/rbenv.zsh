# init according to man page
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init -)"
  export BLEH=$PATH
  export PATH="$HOME/.rbenv/bin:$PATH"
fi
