# Pipe my public key to my clipboard.
alias pubkey="more /home/austin/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias cl="clear"
alias c="clear"
alias pg='ps -ef | grep'

alias reload!='. /home/austin/.zshrc'
alias zshconfig="exec $EDITOR /home/austin/.zshrc"
alias vimrc="exec $EDITOR /home/austin/.vimrc"
alias valias='exec $EDITOR /home/austin/dotfiles/roles/zsh/aliases.zsh'

alias jpulp='cd /home/austin/code/pulp'
