export TERM=xterm-256color
# Set up the prompt
autoload -Uz promptinit
promptinit
#prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

source $HOME/antigen/antigen.zsh

antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
#antigen bundle gitfast
antigen bundle git-extras
# antigen bundle git-prompt
antigen bundle python
antigen bundle pip
antigen bundle ubuntu
antigen bundle dircycle
antigen bundle cp
antigen bundle safe-paste
antigen bundle docker
antigen bundle command-not-found
antigen bundle scd
antigen bundle sudo
antigen bundle python
antigen bundle virtualenv
antigen bundle virtualenvwrapper
antigen bundle dotenv
antigen bundle vscode
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle StackExchange/blackbox
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# oh-my-git
#antigen bundle arialdomartini/oh-my-git
#antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
#antigen bundle agnoster
#antigen theme agnoster
antigen theme romkatv/powerlevel10k
# Tell Antigen that you're done.
antigen apply

VIRTUAL_ENV_DISABLE_PROMPT=true


# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

source /usr/local/bin/virtualenvwrapper.sh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=5"


open() { xdg-open &>/dev/null $1 & }
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias cpkey="pbcopy < ~/.ssh/id_rsa.pub"
alias gpg=gpg2
alias coffee=~/coffee.sh
alias ua="sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y"
xrandr --output DP-1-2 --auto --right-of DisplayPort-3
