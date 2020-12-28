parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

battery_cycle(){
  system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}'
}

export PS1="[`uptime|cut -d' ' -f3-5|cut -d ',' -f1`][\u][\w][\$(parse_git_branch)][$(battery_cycle)] > "
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11.0.6`; java -version"
