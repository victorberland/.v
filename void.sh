# .v


sudo xbps-install -y void-repo-nonfree
sudo xbps-install -Suy \
	git \
	vim \
	curl \
	wget \
	zsh \
	htop \
	base-devel xtools dunst \
	libX11-devel libXft-devel libXinerama-devel libXrandr-devel xorg xterm pango xbindkeys \
	mesa-vulkan-intel intel-video-accel \
	os-prober \
	feh \
	acpi upower cronie \
	font-inconsolata-otf font-awesome \
	alsa-utils pulseaudio alsa-plugins-pulseaudio \
	tmux \
	nodejs rsync \
	docker docker-compose \
	timewarrior \
	nextcloud-client qtkeychain-qt5 \
	firefox thunderbird \
	keepassxc \
	scrot neofetch ffmpeg lm_sensors mons \
	mpv cmus \
	NetworkManager \
	fff \
	libreoffice \
	stow


cd $HOME

git clone https://github.com/void-linux/void-packages.git
cd void-packages
./xbps-src binary-bootstrap
echo XBPS_ALLOW_RESTRICTED=yes >> etc/conf

./xbps-src pkg spotify
./xbps-src pkg discord
xi -y spotify
xi -y discord

cd $HOME


setxkbmap no


# service
sudo ln -s /etc/sv/alsa /var/service/
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/cronie /var/service/
sudo ln -s /etc/sv/dunst /var/service/
sudo ln -s /etc/sv/docker /var/service/



# dev
sudo ln -s /etc/sv/docker /var/service/
sudo usermod -aG docker $USER
sudo npm install -g browser-sync


# youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl


# div
cd ~/.v
stow v


# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Oh My ZSH
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# ZSH Common
wget -O ~/.oh-my-zsh/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme


# suckless
cd ~/.v/dwm
sudo make clean install
cd ~/.v/st
sudo make clean install
cd ~/.v/dmenu
sudo make clean install
cd ~/.v/slock
sudo make clean install

git config credential.helper store
