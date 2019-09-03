
# init
sudo xbps-install -Su git vim curl wget
sudo xbps-install -y base-devel libX11-devel libXft-devel libXinerama-devel

# x, dwm, st
sudo xbps-install -y xorg xterm pango feh
sudo xbps-install -y dmenu font-inconsolata-otf adwaita-icon-theme

# dev
sudo xbps-install -y tmux nodejs docker docker-compose
sudo ln -s /etc/sv/docker /var/service/
sudo usermod -aG docker $USER
npm install -g browser-sync

# div
# youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

cd ~

# bashdot
curl -s https://raw.githubusercontent.com/bashdot/bashdot/master/bashdot > /tmp/bashdot
sudo mv /tmp/bashdot /usr/local/bin
sudo chmod a+x /usr/local/bin/bashdot


# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Oh My ZSH
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# ZSH Common
wget -O $ZSH_CUSTOM/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme

cd .v
chsh -s /bin/zsh
bashdot install v


# suckless
cd ~/.v/suckless/dwm
sudo make clean install
cd ~/.v/suckless/st
sudo make clean install
