#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap adoptopenjdk/openjdk
brew tap exolnet/deprecated
brew tap homebrew/cask-fonts
brew tap joallard/cf-keylayout
brew tap sass/sass
brew tap shivammathur/php
brew install adobe-acrobat-reader electric-sheep microsoft-edge ableton-live-intro adoptopenjdk8 background-music brave-browser cf-keylayout cairo db-browser-for-sqlite discord disk-drill expressvpn firefox font-fira-code gimp google-backup-and-sync google-chat google-chrome inkscape iterm2 libreoffice libxmlsec1 lulu meld opera owasp-zap poedit postman pycharm rar sequel-ace signal skype slack spotify visual-studio-code vlc whatsapp
brew install cowsay fortune git imagemagick lolcat mariadb mysql-client@5.7 node phpunit rsync sass sassc sqlite vim wget yarn zsh
brew install php
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"
composer global require laravel/valet
PATH="$HOME/.composer/vendor/bin:$PATH" valet install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'export PATH="/usr/local/bin:/usr/local/sbin:$PATH"' >> $HOME/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
