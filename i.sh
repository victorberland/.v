
# init
sudo xbps-install -Suy git vim curl wget zsh
sudo xbps-install -y base-devel libX11-devel libXft-devel libXinerama-devel libXrandr-devel
setxkbmap no

# x, dwm, st
sudo xbps-install -y xorg xterm pango feh acpi pm-utils xbindkeys
sudo xbps-install -y font-inconsolata-otf adwaita-icon-theme

# audio
sudo xbps-install -y alsa-utils pulseaudio ConsoleKit2
sudo ln -s /etc/sv/alsa /var/service/
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/cgmanager /var/service/
sudo ln -s /etc/sv/consolekit /var/service/

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

cd .v
chsh -s /bin/zsh
bashdot install v


# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Oh My ZSH
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# ZSH Common
wget -O $ZSH_CUSTOM/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme


# suckless
cd ~/.v/suckless/dwm
sudo make clean install
cd ~/.v/suckless/st
sudo make clean install
cd ~/.v/suckless/dmenu
sudo make clean install
cd ~/.v/suckless/slock
sudo make clean install
