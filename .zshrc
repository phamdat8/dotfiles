if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export PATH=/usr/local/share/npm/bin:$PATH
export PATH="$PATH:/opt/nvim-linux64/bin"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


alias lg='lazygit'
alias fe='cd ~/work-space/MIMS_FE'
alias be='cd ~/work-space/MIMS_BE'
alias abi_fe='cd ~/play-ground/abigail_web'
alias abi_be='cd ~/play-ground/abigail_app'
alias v='nvim'
alias q='exit'
alias dirsearch='python3 ~/dirsearch/dirsearch.py'
alias m='mysql -u datpt -p123456 vendor_portal_ror_development'
alias my='~/my.sql'


[[ -s "/home/datpt/.gvm/scripts/gvm" ]] && source "/home/datpt/.gvm/scripts/gvm"
unsetopt INTERACTIVE_COMMENTS
unsetopt BAD_PATTERN
