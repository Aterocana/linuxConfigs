# pacman
alias install='yaourt -S' #'sudo pacman -S'
alias uninstall='yaourt -Rns' #'sudo pacman -Rns'
alias update='yaourt -Syua' #'sudo pacman -Syu'

#utilities
alias unzip='tar -xzf'
alias ls='ls --color=auto'
alias lh='ll -a'
alias c='clear'
#alias lamp='sudo systemctl start httpd'
#alias lamp-stop='sudo systemctl stop httpd'
#alias lamp-restart='sudo systemctl restart httpd'
#alias db='sudo systemctl start mysqld'
#alias db-stop='sudo systemctl stop mysqld'
#alias db-restart='sudo systemctl restart mysqld'
alias mongodb='sudo systemctl start mongodb'
alias mongodb-stop='sudo systemctl stop mongodb'
alias mongodb-restart='sudo systemctl restart mongodb'
alias pi-lan='ssh xbian@192.168.1.130'
alias pi='ssh xbian@dominici.dnsdynamic.com'