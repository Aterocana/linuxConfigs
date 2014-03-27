# Pacman
alias install='yaourt -S'
#alias install='sudo pacman -S'
alias install-nc='yaourt -S --noconfirm'
alias uninstall='yaourt -Rns' #'sudo pacman -Rns'
alias update='yaourt -Suya' #'sudo pacman -Syu'
alias update-nc='yaourt -Suya --noconfirm'
alias autoremove='if [[ ! -n $(pacman -Qdt) ]]; then echo "Nessun pacchetto da rimuovere"; else sudo pacman -Rns $(pacman -Qdtq); fi'

# Utilities
alias unzip='tar -xzf'
alias ls='ls --color=auto'
alias lh='ll -a'
alias c='clear'
alias proc='ps -aux | grep'

# Services
#alias lamp='sudo systemctl start httpd'
#alias lamp-stop='sudo systemctl stop httpd'
#alias lamp-restart='sudo systemctl restart httpd'
#alias db='sudo systemctl start mysqld'
#alias db-stop='sudo systemctl stop mysqld'
#alias db-restart='sudo systemctl restart mysqld'
alias mongodb='sudo systemctl start mongodb'
alias mongodb-stop='sudo systemctl stop mongodb'
alias mongodb-restart='sudo systemctl restart mongodb'
alias pi='ssh xbian@pi'
alias pi-web='ssh xbian@dominici.dnsdynamic.com'
alias udoo='ssh mauri@udoo -p2223'
