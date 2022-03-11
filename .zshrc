alias cdWorkspace='cd ~/workspace ; echo WORK, WORK, WORK said rihanna ; say çalış çalış çalış'
alias ll='ls -l'
alias sourceMe='source ~/.zshrc ; echo ZSH HAS BEEN SOURCED; say ortaya karışık yükledim hocam'

# https://github.com/nvbn/thefuck#installation
eval $(thefuck --alias)

# https://github.com/pindexis/marker
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"
