
pacman -S vim-minimal
pacman -S alsa-utils
pacman -S feh #this is a wallpaper thing
pacman -S unzip
pacman -S xorg-xev #for finding the keys

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

#-------------------------------------
#OTHER FONTS TO MAKE FIREFOX NOT LOOK LIKE SHIT
#edit /etc/pacman.conf

#[infinality-bundle]
#Server = http://bohoomil.com/repo/$arch
#[infinality-bundle-fonts]
#Server = http://bohoomil.com/repo/fonts

#Next, import and sign the key:
sudo pacman-key --init
sudo dirmngr < /dev/null

sudo pacman-key -r 962DDE58
sudo pacman-key --lsign-key 962DDE58
sudo pacman -Syyu
sudo pacman -S infinality-bundle
#-------------------------------------

#firefox
cd ~/.mozilla/firefox/<profile>
#check if chrome exisits, make it
cd chrome
ln -s dotfiles/apps/firefox/firefox.css userChrome.css