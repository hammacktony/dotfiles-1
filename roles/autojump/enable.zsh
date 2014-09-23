
# enable autojump
unamestr=`uname -a`
if [[ "$unamestr" == *Darwin* ]]
then
  [[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew --prefix`/etc/autojump.zsh
fi
