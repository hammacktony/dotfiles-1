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

# General
alias jj='cd ~/devel/'

# Pulp 3
alias pssh='cd ~/devel/devel && vagrant ssh'
alias ja='cd ~/devel/ansible-pulp3'
alias jp='cd ~/devel/pulp'
alias jd='cd ~/devel/devel'
alias jpy='cd ~/devel/pulp_python'
alias jf='cd ~/devel/pulp_file'
alias jdock='cd ~/devel/pulp_docker'
alias jl='cd ~/devel/pulplift'

alias jt='cd ~/devel/plugin_template'
alias rm-mig='rm -rf ~/devel/pulp/platform/pulpcore/app/migrations'

function pdo() {
  name="sanity/sanity-$1"
  touch $name
  echo "Output directed to $name"

#   # status
  echo "http --auth admin:password http://172.17.0.2/pulp/api/v3/status/" >> $name
  unbuffer http --auth admin:password http://172.17.0.2/pulp/api/v3/status/ >> $name
  echo "\n\n" >> $name

#   # create repo
  unbuffer http --auth admin:password POST http://172.17.0.2/pulp/api/v3/repositories/ name="foo-$1" >> $name
#
#   # create remote
  unbuffer http --auth admin:password POST http://172.17.0.2/pulp/api/v3/remotes/file/ name="bar-$1" url='https://repos.fedorapeople.org/pulp/pulp/demo_repos/test_file_repo/' manifest='PULP_MANIFEST' >> $name
#
#   #sync
  unbuffer http --auth admin:password POST "http://172.17.0.2/pulp/api/v3/remotes/file/$1/sync/" repository="http://172.17.0.2/pulp/api/v3/repositories/$1/" >> $name
  cat $name
}




function pdev() {
  if [ "$2" != "" ]
    then
      echo http --auth admin:password "$2" "http://dev.pulp3:8000""$1" "${@:3:99}"
      http --auth admin:password "$2" "http://dev.pulp3:8000""$1" "${@:3:99}"
    else
      echo http --auth admin:password "http://dev.pulp3:8000""$1"
      http --auth admin:password "http://dev.pulp3:8000""$1"
    fi
}

function pplay() {
  if [ "$2" != "" ]
    then
      echo http --auth admin:password "$2" "http://sandbox.pulp3""$1" "${@:3:99}"
      http --auth admin:password "$2" "http://sandbox.pulp3""$1" "${@:3:99}"
    else
      echo http --auth admin:password "http://sandbox.pulp3""$1"
      http --auth admin:password "http://sandbox.pulp3""$1"
    fi
}
function pisanity() {
  name="sanity/sanity-$1"
  touch $name
  echo "Output directed to $name"

#   # status
  echo "http --auth admin:password http://192.168.122.85/pulp/api/v3/status/" >> $name
  unbuffer http --auth admin:password http://192.168.122.85/pulp/api/v3/status/ >> $name
  echo "\n\n" >> $name

#   # create repo
  unbuffer http --auth admin:password POST http://192.168.122.85/pulp/api/v3/repositories/ name="foo-$1" >> $name
#
#   # create remote
  unbuffer http --auth admin:password POST http://192.168.122.85/pulp/api/v3/remotes/file/ name="bar-$1" url='https://repos.fedorapeople.org/pulp/pulp/demo_repos/test_file_repo/PULP_MANIFEST' >> $name
#
#   #sync
  unbuffer http --auth admin:password POST "http://192.168.122.85/pulp/api/v3/remotes/file/$1/sync/" repository="http://192.168.122.85/pulp/api/v3/repositories/$1/" >> $name
  cat $name
}


function pssanity() {
  name="sanity/sanity-$1"
  touch $name
  echo "Output directed to $name"

#   # status
  echo "http --auth admin:password http://dev.pulp3/pulp/api/v3/status/" >> $name
  unbuffer http --auth admin:password http://dev.pulp3/pulp/api/v3/status/ >> $name
  echo "\n\n" >> $name

#   # create repo
  unbuffer http --auth admin:password POST http://dev.pulp3/pulp/api/v3/repositories/ name="foo-$1" >> $name
#
#   # create remote
  unbuffer http --auth admin:password POST http://dev.pulp3/pulp/api/v3/remotes/file/ name="bar-$1" url='https://repos.fedorapeople.org/pulp/pulp/demo_repos/test_file_repo/PULP_MANIFEST' >> $name
#
#   #sync
  unbuffer http --auth admin:password POST "http://dev.pulp3/pulp/api/v3/remotes/file/$1/sync/" repository="http://dev.pulp3/pulp/api/v3/repositories/$1/" >> $name
  cat $name
}


function psanity() {
  name="sanity/sanity-$1"
  touch $name
  echo "Output directed to $name"

#   # status
  echo "http --auth admin:password http://sandbox.pulp3/pulp/api/v3/status/" >> $name
  unbuffer http --auth admin:password http://sandbox.pulp3/pulp/api/v3/status/ >> $name
  echo "\n\n" >> $name

#   # create repo
  unbuffer http --auth admin:password POST http://sandbox.pulp3/pulp/api/v3/repositories/ name="foo-$1" >> $name
#
#   # create remote
  unbuffer http --auth admin:password POST http://sandbox.pulp3/pulp/api/v3/remotes/file/ name="bar-$1" url='https://repos.fedorapeople.org/pulp/pulp/demo_repos/test_file_repo/' manifest=PULP_MANIFEST >> $name
#
#   #sync
  unbuffer http --auth admin:password POST "http://sandbox.pulp3/pulp/api/v3/remotes/file/$1/sync/" repository="http://sandbox.pulp3/pulp/api/v3/repositories/$1/" >> $name
  cat $name
}

# Pulp 2
alias j2p='cd ~/2dev/pulp'
alias j2py='cd ~/2ev/pulp_python'
alias j2d='cd ~/2dev/devel'
alias j2dock='cd ~/2dev/pulp_docker'

# Warehouse
alias jw='cd ~/devel/warehouse'
