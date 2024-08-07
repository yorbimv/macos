# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git
          web-search)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#comandos
alias ddir="rm -rf"

# git
alias gs="git status"
alias gbr="git branch"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpll="git pull"
alias gsw="git switch"

#lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

#mysql
alias mysql-start="brew services start mysql"
alias mysql-stop='brew services stop mysql'
alias mysql-restart='brew services restart mysql'
alias mysql-root="mysql -u root -p -h 127.0.0.1"

#Hacking
#Busca el usuario en varias redes sociales
alias sherlock="cd; cd sherlock; python3 sherlock"
#Busca información del sitio web
alias whatweb="cd; cd WhatWeb-0.5.5/; ./whatweb"
#alias whatweb="docker run --tty --interactive --rm guidelacour/whatweb \./whatweb"

# Abrir imagen con feh
# alias view='feh'
# alias view-all='feh -A'

# Abir imagen desde terminal
alias view='imgcat'

# Carpetas
alias desktop='cd ~/Desktop'
alias escritorio='cd ~/Desktop'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias github='cd ~/Documents/GitHub'

# OneDrive
alias onedrive='cd /Volumes/HDD/onedrive/OneDrive\ -\ alumnos.cua.uam.mx/MacBook\ Pro\ de\ yorbi/Catalina/'
alias documentoshdd='cd /Volumes/HDD/onedrive/OneDrive\ -\ alumnos.cua.uam.mx/MacBook\ Pro\ de\ yorbi/Catalina/DocumentosHDD'
alias Documentoshdd='cd /Volumes/HDD/onedrive/OneDrive\ -\ alumnos.cua.uam.mx/MacBook\ Pro\ de\ yorbi/Catalina/DocumentosHDD'
alias Imageneshdd='cd /Volumes/HDD/onedrive/OneDrive\ -\ alumnos.cua.uam.mx/MacBook\ Pro\ de\ yorbi/Catalina/ImagenesHDD'
alias imageneshdd='cd /Volumes/HDD/onedrive/OneDrive\ -\ alumnos.cua.uam.mx/MacBook\ Pro\ de\ yorbi/Catalina/ImagenesHDD'


# Atajos
alias history-clear='rm $HISTFILE'
alias zshconfig='cd; code .zshrc'
alias cp-zsh-gh='cd; cp .zshrc /Users/yorbi/Documents/GitHub/macos/config/iTerm/zsh'

# Alias
alias alias-cmd='cat ~/Documents/GitHub/macos/config/iTerm/alias/cmdFiles'
alias alias-files='cat ~/Documents/GitHub/macos/config/iTerm/alias/files'
# alias alias-view='cat ~/Documents/GitHub/macos/config/iTerm/alias/feh'
alias alias-git='cat ~/Documents/GitHub/macos/config/iTerm/alias/git'
alias alias-ls='cat ~/Documents/GitHub/macos/config/iTerm/alias/ls'
alias alias-mysql='cat ~/Documents/GitHub/macos/config/iTerm/alias/mysql'

# ============  fzf ============
# ctrl + t = buscar archivo
# ctrl + r = buscar en historial
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fif Buscador de alguna cadena dentro de algun archivo
fif() {
  if [ ! "$#" -gt 1 ]; then echo "Necesito una cadena para buscar!"; return 1; fi
  rg --files-with-matches --no-messages $1 | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 $1 || rg --ignore-case --pretty --context 10 $1 {}"
}

# plugins
  source /usr/local/Cellar/zsh-syntax-highlighting/0.8.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Movimientos terminal zsh
# Desplazarse por palabra
bindkey "[D" backward-word #tecla alt + izq
bindkey "[C" forward-word  #tecla alt + derecha

# Ir al principio & final
bindkey "\e[D" delete-char    #fn + izq 
bindkey "\e[C" delete-char    #fn + derecha 

# Accion suprimir
bindkey "\e[3~" delete-char    #fn + eliminar 


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# Ruby
#En caso de tener conflictos en cambiar la version de ruby
#Comentar la sig linea export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rvm/bin"
# Customize yor needs...
export PATH=$HOME/.rbenv/bin:/usr/local/bin:$HOME/.bin:$PATH
# load rbenv automatically
eval "$(rbenv init - zsh)"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/ruby/bin:$PATH"
