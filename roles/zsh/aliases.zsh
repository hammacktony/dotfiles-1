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

# Pulp 3
alias pssh='cd ~/3dev/devel && vagrant ssh'
alias jp='cd ~/3dev/pulp'
alias jd='cd ~/3dev/devel'
alias jpy='cd ~/3dev/pulp_python'
alias jf='cd ~/3dev/pulp_file'

# Pulp 2
alias j2='cd ~/2dev/pulp'
alias j2py='cd ~/3dev/pulp_python'
alias j2d='cd ~/2dev/devel'
alias rm-mig='rm -rf ~/3dev/pulp/platform/pulpcore/app/migrations'
function httpu() {
  http "$2" "http://pulp3.dev:8000/pulp/api/""$1"
}

# Warehouse
alias jw-'cd ~/3dev/warehouse'
