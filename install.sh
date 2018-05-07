#!/usr/bin/env bash

sudo apt-get update -y

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install gcc g++ make -y
sudo apt-get install nodejs -y
sudo apt-get install build-essential -y

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -y
sudo apt-get install yarn -y

mkdir ~/node-modules
ln -sf ~/node-modules /vagrant/