sudo pacman -Sy --noconfirm archlinux-keyring arcolinux-keyring
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm librewolf 
sudo pacman -S --noconfirm firefox 
sudo pacman -S --noconfirm alacritty 
sudo pacman -S --noconfirm dmenu
sudo pacman -S --noconfirm i3 
sudo pacman -S --noconfirm pavucontrol pulsaudio 
sudo pacman -S --noconfirm unzip 
sudo pacman -S --noconfirm neovim python-pynvim xsel xclip
sudo pacman -S --noconfirm rofi 
sudo pacman -S --noconfirm fortune-mod 
sudo pacman -S --noconfirm cowsay 
sudo pacman -S --noconfirm ruby 
sudo pacman -S --noconfirm pcmanfm
sudo pacman -S --noconfirm picom 
sudo pacman -S --noconfirm nitrogen 
sudo pacman -S --noconfirm cargo 
sudo pacman -S --noconfirm npm 
sudo pacman -S --noconfirm pcmanfm
sudo pacman -S --noconfirm polybar 
sudo pacman -S --noconfirm pulseaudio-alsa 
sudo pacman -S --noconfirm id3v2
sudo pacman -S --noconfirm gpick
sudo pacman -S --noconfirm nomacs
sudo pacman -S --noconfirm cowsay 
sudo pacman -S --noconfirm ruby 
sudo pacman -S --noconfirm 7-zip 
sudo pacman -S --noconfirm udisks2 
sudo pacman -S --noconfirm libreoffice
sudo pacman -S --noconfirm vlc
sudo pacman -S --noconfirm ncdu
sudo pacman -S --noconfirm lua-language-server
sudo pacman -S --noconfirm wine
sudo pacman -S --noconfirm android-tools-adb
sudo pacman -S --noconfirm go
sudo pacman -S --noconfirm fcitx-configtool fcitx-mozc
sudo pacman -S --noconfirm adobe-source-han-sans-jp-fonts otf-ipafont
sudo pacman -S --noconfirm mozc
sudo pacman -S --noconfirm php-pgsql
sudo pacman -S --noconfirm php


yay -S --noconfirm nerd-fonts-meta 
yay -S --noconfirm composer 
yay -S --noconfirm ttf-icomoon-feather 
yay -S --noconfirm alacritty-themes 
yay -S --noconfirm ttf-font-awesome 
yay -S --noconfirm ttf-iosevka-nerd
yay -S --noconfirm ttf-fantasque-sans-mono 
yay -S --noconfirm noto-fonts
yay -S --noconfirm ttf-droid
yay -S --noconfirm terminus-font
yay -S --noconfirm ttf-icomoon-feather
yay -S --noconfirm siji-ttf
yay -S --noconfirm siji-git
yay -S --noconfirm siji-git
yay -S --noconfirm pywal
yay -S --noconfirm mozc
yay -S --noconfirm ttf-monapo
yay -S --noconfirm ttf-vlgothic
yay -S --noconfirm blesh-git
yay -S --noconfirm update-grub


# sudo pacman -S --noconfirm apache mariadb php php-apache phpmyadmin 
# sudo systemctl enable httpd
# sudo systemctl restart httpd
# sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
# sudo systemctl enable mysqld
# sudo systemctl start mysqld

# sudo sed -i 's|#LoadModule mpm_event_module modules/mod_mpm_event.so|LoadModule mpm_event_module modules/mod_mpm_event.so|' /etc/httpd/conf/httpd.conf
# sudo sed -i 's|#LoadModule mpm_prefork_module modules/mod_mpm_prefork.so|LoadModule mpm_prefork_module modules/mod_mpm_prefork.so|' /etc/httpd/conf/httpd.conf

# echo "" | sudo tee -a /etc/httpd/conf/httpd.conf
# sudo tee -a /etc/httpd/conf/httpd.conf <<EOF
# LoadModule php_module modules/libphp.so
# AddHandler php-script php
# Include conf/extra/php_module.conf
# EOF

# sudo systemctl restart httpd
# sudo sed -i 's|;extension=mysqli|extension=mysqli|' /etc/php/php.ini
# sudo sed -i 's|;extension=pdo_mysql|extension=pdo_mysql|' /etc/php/php.ini
# sudo sed -i 's|;extension=bz2|extension=bz2|' /etc/php/php.ini

# sudo tee -a /etc/httpd/conf/extra/phpmyadmin.conf <<EOF
# Alias /phpmyadmin "/usr/share/webapps/phpMyAdmin"
# <Directory "/usr/share/webapps/phpMyAdmin">
#     DirectoryIndex index.php
#     AllowOverride All
#     Options FollowSymlinks
#     Require all granted
# </Directory>
# EOF

# sudo tee -a /etc/httpd/conf/httpd.conf <<EOF

# Include conf/extra/phpmyadmin.conf
# EOF
# sudo systemctl restart httpd


sudo pacman -S --noconfirm ncmpc mpc mpd ncmpcpp 
cp ~/dotfiles/.ncmpcpp/ ~/
cp ~/dotfiles/.mpd/ ~/
# curl https://pastebin.com/raw/mGuS7TZU >> ~/.mpd/mpd.conf
# touch mpd.db mpd.pid mpd.log
# mkdir ~/.ncmpcpp
# cd ~/.ncmpcpp
# curl https://pastebin.com/raw/hiKTfz4i >> config
sudo systemctl enable mpd
sudo systemctl start mpd
systemctl --user start mpd.service
systemctl --user enable mpd.service


sudo npm i npm@latest -g
sudo npm i @material-design-icons/font@latest -g
sudo npm i yarn -g
sudo npm i vscode-languageserver -g


cd ~/
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd ~/polybar-themes/
chmod +x setup.sh 
echo "1" | ./setup.sh

cp ~/dotfiles/config.ini ~/.config/polybar/material/
cp ~/dotfiles/modules.ini ~/.config/polybar/material/


cp -r ~/dotfiles/.bashrc ~/dotfiles/.gitconfig ~/dotfiles/.config/ ~/dotfiles/.mpd ~/dotfiles/.ncmpcpp ~/


cd ~/
mkdir ~/.config/nvim/
# git clone https://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@github.com/MuteSTEVE/Neovim-config.git
git clone https://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@github.com/MuteSTEVE/Neovim-lazy.git
cp ~/Neovim-lazy/* ~/.config/nvim/
