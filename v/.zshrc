export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="common"
plugins=(
	git
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export TERM=xterm-256color

# alias
alias ytdl='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4"'
alias serve='browser-sync start -s -f . --no-notify --host $LOCAL_IP --port 9000'

alias untar='tar -zxvf'
alias notat='vim -p $HOME/o/n/*'
alias copywpe='cat ~/.ssh/wpengine_rsa.pub | pbcopy'
alias vim='nvim'

export PATH="$PATH:$HOME/.npm-packages/bin"
export PATH="$PATH:$HOME/.npm-global/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/lib/python3.9/site-packages"
export PATH=$PATH:/opt/homebrew/bin

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
