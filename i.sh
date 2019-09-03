

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
