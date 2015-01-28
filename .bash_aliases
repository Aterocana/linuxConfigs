# Package Manager
alias install='sudo apt-get install'
alias uninstall='sudo apt-get purge'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias autoremove='sudo apt-get autoremove'
alias update-node='sudo wget http://node-arm.herokuapp.com/node_latest_armhf.deb && sudo dpkg -i node_latest_armhf.deb && rm -f node_latest_armhf.deb'

# Utilities
alias ls='ls --color=auto'
alias lh='ll -a'
alias c='clear'
alias proc='ps aux | grep'
alias temp='/opt/vc/bin/vcgencmd measure_temp'
