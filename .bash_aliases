# pacman
alias install='sudo pacman -S'
alias uninstall='sudo pacman -Rs'
alias update='sudo yaourt -Syua' #'sudo pacman -Syu'

#utilities
alias unzip='tar -xzf'
alias ls='ls --color=auto'
alias lh='ll -a'
alias c='clear'
alias lamp='sudo systemctl start httpd'
alias lamp-stop='sudo systemctl stop httpd'
alias lamp-restart='sudo systemctl restart httpd'
alias db='sudo systemctl start mysqld'
alias db-stop='sudo systemctl stop mysqld'
alias db-restart='sudo systemctl restart mysqld'
alias pi-lan='ssh xbian@192.168.1.130'
alias pi='ssh xbian@dominici.dnsdynamic.com'
