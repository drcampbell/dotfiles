sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

git clone https://github.com/adobe-fonts/source-code-pro.git 
git clone https://github.com/numixproject/numix-icon-theme-circle.git
git clone https://github.com/horst3180/arc-theme.git
cd arc-theme
./autogen.sh --prefix=/usr
sudo make install

