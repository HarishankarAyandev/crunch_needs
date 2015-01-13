##installing python 3.4.1
sudo apt-get install libssl-dev openssl

wget https://www.python.org/ftp/python/3.4.1/Python-3.4.1.tgz

tar -xvf Python-3.4.1.tgz

cd Python-3.4.1/

./configure

make

sudo make install

./python

#installing exfat
sudo apt-get install exfat-fuse exfat-utils

#installing nodejs
sudo apt-get install python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

#installing npm
sudo npm install -g npm

#installing bower
sudo npm install bower -g

