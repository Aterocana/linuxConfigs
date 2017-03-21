# Pacman
alias install='yaourt -S'
#alias install='sudo pacman -S'
alias install-nc='yaourt -S --noconfirm'
alias uninstall='yaourt -Rns' #'sudo pacman -Rns'
alias update='yaourt -Suya' #'sudo pacman -Syu'
alias update-nc='yaourt -Suya --noconfirm'
alias autoremove='if [[ ! -n $(pacman -Qdt) ]]; then echo "Nessun pacchetto da rimuovere"; else sudo pacman -Rns $(pacman -Qdtq); fi'
alias clean-cache='sudo pacman -Scc'

# Utilities
alias unzip='extract'
alias ll='ls -lh'
alias lh='ll -ah'
alias c='clear'
alias proc='ps -aux | grep'
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

# Services
alias mongodb='sudo systemctl start mongodb'
alias mongodb-stop='sudo systemctl stop mongodb'
alias mongodb-restart='sudo systemctl restart mongodb'
alias docker-start='sudo systemctl start docker'
alias docker-stop='sudo systemctl stop docker'
