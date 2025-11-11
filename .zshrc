# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
ZSH_THEME="robbyrussell"

plugins=(git)

# Starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Vendor PHP
PATH=$PATH:~/.composer/vendor/bin
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#
# Custom Alias
# -----------------
#

# Laravel Sail
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Created by `pipx` on 2024-10-11 04:07:51
export PATH="$PATH:/Users/danielaguirre/.local/bin"

#
# Custom daguigonz
# -----------------
# Activate syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Activate autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH=~/.npm/bin:$PATH

export HOMEBREW_NO_INSTALL_CLEANUP=1
export HOMEBREW_NO_ENV_HINTS=1
export OPENAI_API_KEY=""
export GEMINI_API_KEY=""

# Custom tmux
tmux() {
  if [ $# -eq 0 ]; then
    command tmux   # Si no pasas nombre, abre tmux normal
  else
    command tmux new-session -A -s "$1"  # Adjunta o crea sesión con el nombre
  fi
}

source ~/.luaver/luaver
export PATH=/Library/TeX/texbin:$PATH
export PATH=/Library/TeX/texbin:$PATH
