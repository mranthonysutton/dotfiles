# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/anthony/.oh-my-zsh"

export PATH=/home/anthony/.yarn/bin:$PATH
export PATH=/home/anthony/.local/bin:$PATH
export PATH=/home/anthony/go/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Alias
alias buildnvim="make CMAKE_BUILD_TYPE=Release && sudo make install"
alias updateupgrade="sudo apt update && sudo apt upgrade"
alias python="python3"
alias cdnvim="cd ~/Storage/Development/Resources/neovim"
alias cddev="cd ~/Storage/Development"
alias cdwgu="cd ~/Storage/WGU"
alias cdnotes="cd ~/Storage/notes"
alias cleanlatex="latexmk -c"
alias cppcompile="g++ -Wall *.cpp && ./a.out"

plugins=(git zsh-syntax-highlighting yarn)

source $ZSH/oh-my-zsh.sh

# Removes the user account in the path name
prompt_context () {}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM Loader
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
