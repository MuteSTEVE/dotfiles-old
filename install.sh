pkgs=(
  archlinux-keyring
  arcolinux-keyring
  librewolf 
  firefox 
  alacritty 
  dmenu
  i3 
  pavucontrol
  pulsaudio 
  unzip 
  neovim
  python-pynvim
  xsel
  xclip
  rofi 
  fortune-mod 
  cowsay 
  ruby 
  pcmanfm
  picom 
  nitrogen 
  cargo 
  npm 
  pcmanfm
  polybar 
  pulseaudio-alsa 
  id3v2
  gpick
  nomacs
  cowsay 
  ruby 
  7-zip 
  udisks2 
  libreoffice
  vlc
  ncdu
  lua-language-server
  wine
  android-tools-adb
  go
  fcitx
  fcitx-configtool
  fcitx-mozc
  adobe-source-han-sans-jp-fonts
  otf-ipafont
  php
  php-pgsql
  zsh
  nomacs
)

yay=(
  nerd-fonts-meta 
  composer 
  ttf-icomoon-feather 
  alacritty-themes 
  ttf-font-awesome 
  ttf-iosevka-nerd
  ttf-fantasque-sans-mono 
  noto-fonts
  ttf-droid
  terminus-font
  ttf-icomoon-feather
  siji-ttf
  siji-git
  siji-git
  pywal
  update-grub
  apache
  mariadb
  php
  php-apache
  phpmyadmin 
)

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm "${pkgs[@]}"
yay -S --noconfirm "${yay[@]}"

sudo systemctl enable httpd
sudo systemctl restart httpd
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl enable mysqld
sudo systemctl start mysqld

sudo sed -i 's|#LoadModule mpm_event_module modules/mod_mpm_event.so|LoadModule mpm_event_module modules/mod_mpm_event.so|' /etc/httpd/conf/httpd.conf
# sudo sed -i 's|#LoadModule mpm_prefork_module modules/mod_mpm_prefork.so|LoadModule mpm_prefork_module modules/mod_mpm_prefork.so|' /etc/httpd/conf/httpd.conf

echo "" | sudo tee -a /etc/httpd/conf/httpd.conf
sudo tee -a /etc/httpd/conf/httpd.conf <<EOF
LoadModule php_module modules/libphp.so
AddHandler php-script php
Include conf/extra/php_module.conf
EOF

sudo systemctl restart httpd
sudo sed -i 's|;extension=mysqli|extension=mysqli|' /etc/php/php.ini
sudo sed -i 's|;extension=pdo_mysql|extension=pdo_mysql|' /etc/php/php.ini
sudo sed -i 's|;extension=bz2|extension=bz2|' /etc/php/php.ini

sudo tee -a /etc/httpd/conf/extra/phpmyadmin.conf <<EOF
Alias /phpmyadmin "/usr/share/webapps/phpMyAdmin"
<Directory "/usr/share/webapps/phpMyAdmin">
    DirectoryIndex index.php
    AllowOverride All
    Options FollowSymlinks
    Require all granted
</Directory>
EOF

sudo tee -a /etc/httpd/conf/httpd.conf <<EOF

Include conf/extra/phpmyadmin.conf
EOF
sudo systemctl restart httpd


sudo pacman -S --noconfirm ncmpc mpc ncmpcpp 
cp -r ~/dotfiles/.ncmpcpp/ ~/
cp -r ~/dotfiles/.mpd/ ~/
systemctl --user enable mpd.service
systemctl --user start mpd.service


sudo npm i npm@latest -g
sudo npm i @material-design-icons/font@latest -g
sudo npm i yarn -g
sudo npm i vscode-languageserver -g
sudo npm i phpactor -g


cd ~/
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd ~/polybar-themes/
chmod +x setup.sh 
echo "1" | ./setup.sh

cp ~/dotfiles/config.ini ~/.config/polybar/material/
cp ~/dotfiles/modules.ini ~/.config/polybar/material/


cp -r ~/dotfiles/.gitconfig ~/dotfiles/.config/ ~/dotfiles/.mpd ~/dotfiles/.ncmpcpp ~/
cp ~/dotfiles/pacman ~/.config/polybar/material/scripts/


cd ~/
mkdir ~/.config/nvim/
git clone https://github.com/MuteSTEVE/MuteSTEVE-Lazy.git ~/.config/nvim/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
