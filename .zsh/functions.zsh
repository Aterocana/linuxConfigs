function insert_sudo () { 
	zle beginning-of-line; zle -U "sudo " 
}

#ALT+S ANTEPONE "sudo" A SINISTRA NEL COMANDO
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo