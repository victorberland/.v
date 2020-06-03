
# init
sudo xbps-install -y void-repo-nonfree
sudo xbps-install -Suy git vim curl wget zsh htop
sudo xbps-install -y base-devel libX11-devel libXft-devel libXinerama-devel libXrandr-devel os-prober
setxkbmap no

# x, dwm, st
sudo xbps-install -y xorg xterm pango feh acpi xbindkeys upower
sudo xbps-install -y font-inconsolata-otf adwaita-icon-theme font-awesome

# audio
sudo xbps-install -y alsa-utils pulseaudio ConsoleKit2
sudo ln -s /etc/sv/alsa /var/service/
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/cgmanager /var/service/
sudo ln -s /etc/sv/consolekit /var/service/

# dev
sudo xbps-install -y tmux nodejs docker docker-compose filezilla
sudo ln -s /etc/sv/docker /var/service/
sudo usermod -aG docker $USER
sudo npm install -g browser-sync

# youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# div
sudo xbps-install -y nextcloud-client qtkeychain-qt5 firefox thunderbird keepassxc scrot neofetch ffmpeg lm_sensors vlc NetworkManager ranger w3m-img pandoc libreoffice spotify ffmpeg

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
wget -O ~/.oh-my-zsh/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme


# suckless
cd ~/.v/suckless/dwm
sudo make clean install
cd ~/.v/suckless/st
sudo make clean install
cd ~/.v/suckless/dmenu
sudo make clean install
cd ~/.v/suckless/slock
sudo make clean install

git config credential.helper store
