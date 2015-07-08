#!/bin/bash -ex
sudo apt-get update
sudo apt-get install -y curl php5 php5-curl htop git
sudo curl -sS https://getcomposer.org/installer | sudo php
cd /vagrant
if [ -f composer.lock ]; then
  sudo php composer.phar update
else
  sudo php composer.phar install --no-interaction
fi
