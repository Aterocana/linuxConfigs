# Pacman
alias install='yay -S'
#alias install='sudo pacman -S'
alias install-nc='yay -S --noconfirm'
alias uninstall='yay -Rns' #'sudo pacman -Rns'
alias update='sudo pacman -Syu && yay -Suya && sudo snap refresh'
alias update-nc='sudo pacman -Syu --noconfirm && yay -Suya --noconfirm && sudo snap refresh'
alias autoremove='if [[ ! -n $(pacman -Qdt) ]]; then echo "Nessun pacchetto da rimuovere"; else sudo pacman -Rns $(pacman -Qdtq); fi'
alias clean-cache='sudo pacman -Scc'

# Utilities
alias unzip='extract'
alias ll='ls -lh'
alias lh='ll -ah'
alias c='clear'
alias proc='ps -aux | grep'
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias set-python2="sudo unlink /usr/bin/python && sudo ln -s /usr/bin/python2 /usr/bin/python"
alias set-python3="sudo unlink /usr/bin/python && sudo ln -s /usr/bin/python3 /usr/bin/python"
alias vim='nvim'
alias docker-rm-dangling='docker rmi -f $(docker images -f "dangling=true" -q)'
