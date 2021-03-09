if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

export TERM=xterm-256color

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# local ip for serve
#export LOCAL_IP=`ipconfig getifaddr en0`


# theme
ZSH_THEME="common"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Innstikk
plugins=(
	git
)

source $ZSH/oh-my-zsh.sh


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'
# Preferred editor for local and remote sessions

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#


# fff
export FFF_FAV1=~/o
export FFF_FAV2=~/v
export FFF_FAV3=~/.v


# alias
alias ytdl='youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4"'
alias serve='browser-sync start -s -f . --no-notify --host $LOCAL_IP --port 9000'

alias status='
	echo "---- V ----"
	echo "----------"
	acpi
	echo "----------"
	free -m
	echo "----------"
	sensors
	'
alias xi='sudo xbps-install -Su'
alias xr='sudo xbps-remove -R'

alias untar='tar -zxvf'
alias webcam='guvcview'
alias f='fff'

alias wp='docker-compose run --rm cli'

# alias stripe='docker run --rm -it stripe/stripe-cli'
alias stripe='docker run -it stripe/stripe-cli'

export PATH="$PATH:$HOME/.npm-packages/bin"
export PATH="$PATH:$HOME/.npm-global/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/.cargo/bin"

 export NVM_DIR=~/.nvm
 [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use
