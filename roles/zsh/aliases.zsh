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
alias ja='cd ~/devel/ansible-pulp'
alias jd='cd ~/devel/pulp_docker'
alias jdot='cd ~/dotfiles/'
alias jf='cd ~/devel/pulp_file'
alias jl='cd ~/devel/pulplift'
alias jp='cd ~/devel/pulpcore'
alias jpp='cd ~/devel/pulpcore-plugin'
alias jpy='cd ~/devel/pulp_python'
