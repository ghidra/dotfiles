
pacman -S alsa-utils
pacman -S feh #this is a wallpaper thing
pacman -S unzip
sudo pacman -S xorg-xev #for finding the keys

#brightness on the laptop is here:
#/sys/class/backlight/intel_backlight/brightness
#i need to set the folder to use no password in 
#sudo visudo
#add this line:
#(username) ALL=NOPSSWD: /usr/bin/tee /sys/class/backlight/intel_backlight/brighness

#wallpaper
#feh set bg
#feh --bg-scale /path/to/image.file

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