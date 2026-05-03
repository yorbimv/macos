# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh-My-Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git web-search)
source $ZSH/oh-my-zsh.sh

# ====== Aliases ======

# General
alias ddir="rm -rf"
alias history-clear='rm $HISTFILE'
alias zshconfig='code ~/.zshrc'

# Git
alias gs="git status"
alias gbr="git branch"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpll="git pull"
alias gsw="git switch"

# lsd (listado con colores e iconos)
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# MySQL
alias mysql-start="brew services start mysql"
alias mysql-stop='brew services stop mysql'
alias mysql-restart='brew services restart mysql'
alias mysql-root="mysql -u root -p -h 127.0.0.1"

# Hacking tools
alias sherlock='python3 ~/sherlock/sherlock'
alias whatweb='cd ~/WhatWeb-0.5.5/ && ./whatweb'

# Imagen en terminal
alias view='imgcat'

# Navegación
alias desktop='cd ~/Desktop'
alias escritorio='cd ~/Desktop'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias github='cd ~/Documents/GitHub'

# OneDrive (ajustar ruta según tu setup)
# alias onedrive='cd ~/Library/CloudStorage/OneDrive-Personal'
# alias documentoshdd='cd ~/Documents'

# ====== FZF ======
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fif - Buscar cadena dentro de archivos
fif() {
  if [ ! "$#" -gt 1 ]; then echo "Necesito una cadena para buscar!"; return 1; fi
  rg --files-with-matches --no-messages $1 | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 $1 || rg --ignore-case --pretty --context 10 $1 {}"
}

# ====== Plugins manuales ======
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# ====== Atajos de teclado ======
bindkey "[D" backward-word   # Alt + izquierda
bindkey "[C" forward-word    # Alt + derecha
bindkey "\e[3~" delete-char  # Fn + delete

# ====== iTerm2 Shell Integration ======
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# ====== rbenv / Ruby ======
[ -f ~/.rbenv/bin/rbenv ] && eval "$(rbenv init - zsh)"

# ====== PATH ======
export PATH="/opt/homebrew/bin:$HOME/.bin:$PATH"

# PowerLevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
