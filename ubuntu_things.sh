##installing python 3.4.1
sudo apt-get install libssl-dev openssl

wget https://www.python.org/ftp/python/3.4.1/Python-3.4.1.tgz

tar -xvf Python-3.4.1.tgz

cd Python-3.4.1/

./configure

make

sudo make install

./python
