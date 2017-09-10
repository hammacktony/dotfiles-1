# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Syntax-highlighted cat (requires python-pygments)
alias dog="pygmentize -g"

alias cl="clear"
alias c="clear"
alias pg='ps -ef | grep'
alias lj='jobs'
alias dil='doitlive'
alias dilp='doitlive play'

alias reload!='. ~/.zshrc'
alias vi="vim"
alias v="vim"

# Pulp
alias pssh='cd ~/3dev/devel && vagrant ssh'
alias jp='cd ~/3dev/pulp'
alias jd='cd ~/3dev/devel'
alias rmmig='rm -rf ~/3dev/pulp/platform/pulpcore/app/migrations'
