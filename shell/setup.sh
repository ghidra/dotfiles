


mkdir ~/aur_builds


git clone https://github.com/Tecate/bitmap-fonts.git
cd bitmap-fonts
sudo cp -avr bitmap/ /usr/share/fonts
cd /usr/share/fonts/bitmap
fc-cache && mkfontscale && mkfontdir
xset fp+ /usr/share/fonts/bitmap
fc-cache -fv

#firefox
cd ~/.mozilla/firefox/<profile>
#check if chrome exisits, make it
cd chrome
ln -s dotfiles/apps/firefox/firefox.css userChrome.css