#!/bin/bash
echo "installing....."; 
sudo pacman -Syu php curl;
sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');";
php -r "if (hash_file('sha384', 'composer-setup.php') === 'c31c1e292ad7be5f49291169c0ac8f683499edddcfd4e42232982d0fd193004208a58ff6f353fde0012d35fdd72bc394') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/bin --filename=composer;
