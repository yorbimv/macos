# Powerlevel10k instant prompt (debe ir arriba)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git web-search)
source $ZSH/oh-my-zsh.sh

# ====== Aliases ======
alias ddir="rm -rf"
alias dfile="rm -f"
alias history-clear='rm -f ~/.zsh_history'
alias clear-all='clear && printf "\e[3J"'
alias zshconfig='code ~/.zshrc'

# git
alias gs="git status"
alias gbr="git branch"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpll="git pull"
alias gsw="git switch"

# lsd
if command -v lsd >/dev/null 2>&1; then
  alias ls='lsd'
  alias l='ls -l'
  alias la='ls -a'
  alias lla='ls -la'
  alias lt='ls --tree'
fi

# Imagen en terminal (iTerm2) y última captura
if [ -x "$HOME/.iterm2/imgcat" ]; then
  alias view='$HOME/.iterm2/imgcat'
  scr() { open "$(ls -t ~/Desktop/*.png 2>/dev/null | head -1)"; }
fi

# Carpetas
alias desktop='cd ~/Desktop'
alias escritorio='cd ~/Desktop'
alias documents='cd ~/Documents'
alias documentos='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias descargas='cd ~/Downloads'
alias github='cd ~/Documents/GitHub'

# ====== fzf ======
# ctrl+t = buscar archivo, ctrl+r = buscar en historial
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fif: buscar una cadena dentro de archivos
fif() {
  if [ ! "$#" -gt 1 ]; then echo "Necesito una cadena para buscar!"; return 1; fi
  rg --files-with-matches --no-messages $1 | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 $1 || rg --ignore-case --pretty --context 10 $1 {}"
}

# ====== Teclas ======
bindkey "\e[1;3D" backward-word   # option + izq
bindkey "\e[1;3C" forward-word    # option + der
bindkey "\e[1;2D" backward-char   # shift + izq
bindkey "\e[1;2C" forward-char
bindkey "\e[1;2A" up-line-or-history
bindkey "\e[1;2B" down-line-or-history
bindkey "\e[D" delete-char        # fn + izq
bindkey "\e[C" delete-char        # fn + der
bindkey "\e[3~" delete-char       # fn + suprimir

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Powerlevel10k (configurar con `p10k configure`)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ====== PATH ======
for p in "$HOME/.local/bin" "$HOME/.opencode/bin" "$HOME/.npm-global/bin" "$HOME/.lmstudio/bin"; do
  [ -d "$p" ] && export PATH="$p:$PATH"
done

# Plugins de zsh de Homebrew (syntax-highlighting debe ir al final)
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
