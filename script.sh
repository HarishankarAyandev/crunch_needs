#this will be more useful - check this
http://debianhelp.wordpress.com/2012/10/02/crunchbang-11-waldorf-debian-wheezy-os/

#for update
sudo apt-get update

#for vim

sudo apt-get install vim

#for sublime 3
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3047_i386.deb
sudo dpkg -i sublime-text_build-3047_*.deb

#for git
sudo apt-get install git

#for rbenv
sudo apt-get install -y libssl-dev zlib1g-dev libreadline-dev
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
exec $SHELL -l

#for ruby 2.1.2
rbenv install 2.1.2
rbenv global 2.1.2
rbenv rehash

#checking
ruby -v

#for rails
gem install rails

#checking
rails -v

#unetbootin
sudo apt-get install unetbootin

#for good source list

sudo geany /etc/apt/sources.list

## CRUNCHBANG
## Compatible with Debian Wheezy, but use at your own risk.
deb http://packages.crunchbang.org/waldorf waldorf main
#deb-src http://packages.crunchbang.org/waldorf waldorf main

## Debian
deb http://ftp.debian.org/debian/ wheezy main contrib non-free
#deb-src http://ftp.debian.org/debian/ wheezy main contrib non-free

## Multimedia
deb http://www.deb-multimedia.org wheezy main non-free

## Debian Security
deb http://security.debian.org/ wheezy/updates main
#deb-src http://security.debian.org/ wheezy/updates main

## Debian Stable
deb http://ftp.debian.org/debian/ stable main contrib non-free

##removing ice weasel and adding firefox
sudo apt-get remove iceweasel
sudo echo -e "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
sudo apt-get update
sudo apt-get install firefox-mozilla-build

##installing multimedia keyring
sudo apt-get install deb-multimedia-keyring

#for FFMPeg
sudo apt-get install libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg libmp4v2-2 totem-mozilla icedax tagtool easytag id3tool lame libmad0 libjpeg-progs libquicktime2 flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux liba52-0.7.4-dev

#for dark table

sudo apt-get install darktable

#for audacity

sudo apt-get install audacity lame libmp3lame0


#to get python properties
sudo apt-get install -y python-software-properties software-properties-common curl

#db
echo "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main" > ~/pgdg.list
sudo mv ~/pgdg.list /etc/apt/sources.list.d/pgdg.list
sudo wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -

#node
wget http://nodejs.org/dist/v0.10.12/node-v0.10.12.tar.gz
tar xzf node-v0.10.12.tar.gz
cd node-v0.10.12/
./configure
make
make test
sudo make install

#postgresql
sudo apt-get update
sudo apt-get install -y postgresql-9.2 pgadmin3 libpq-dev postgresql-client
sudo apt-get install -y nodejs
sudo apt-get install -y p7zip-full

#sqlite3
sudo apt-get install libsqlite3-dev

#pre-requisities for redis server
#reference : https://www.digitalocean.com/community/tutorials/how-to-install-and-use-redis
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install tcl8.5

#installing redis
wget http://download.redis.io/releases/redis-2.8.9.tar.gz
tar xzf redis-2.8.9.tar.gz
cd redis-2.8.9
make
make test
sudo make install
cd utils
sudo ./install_server.sh

sudo service redis_6379 start
sudo service redis_6379 stop

#for accessing redis database
redis-cli

#to start at boot 
sudo update-rc.d redis_6379 defaults

#for ember
sudo npm install -g ember-cli@0.0.22
sudo npm install

#bower
sudo apt-get install git-core
sudo npm install -g bower

#mysql
#source: https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-debian-7
sudo apt-get install mysql-server

#nginx
sudo apt-get install nginx
sudo service nginx start

Now if you point your browser to your IP address, it should confirm that nginx was successfully installed on your cloud server.

*Run the following command to reveal your VPS's IP address.

ifconfig eth0 | grep inet | awk '{ print $2 }'

#open
sudo nano /etc/nginx/sites-available/default
 [...]
server {
        listen   80;
     

        root /usr/share/nginx/www;
        index index.php index.html index.htm;

        server_name example.com;

        location / {
                try_files $uri $uri/ /index.html;
        }

        error_page 404 /404.html;

        error_page 500 502 503 504 /50x.html;
        location = /50x.html {
              root /usr/share/nginx/www;
        }

        # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
        location ~ \.php$ {
                try_files $uri =404;
                fastcgi_pass unix:/var/run/php5-fpm.sock;
                fastcgi_index index.php;
                fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
                include fastcgi_params;
                
        }

}
[...] '

#node latest version
sudo apt-get install python g++ make checkinstall fakeroot
src=$(mktemp -d) && cd $src
wget -N http://nodejs.org/dist/node-latest.tar.gz
tar xzvf node-latest.tar.gz && cd node-v*
./configure
sudo fakeroot checkinstall -y --install=no --pkgversion $(echo $(pwd) | sed -n -re's/.+node-v(.+)$/\1/p') make -j$(($(nproc)+1)) install
 sudo dpkg -i node_*

 #for uninstall
 sudo dpkg -r node

  123 down vote accepted
	
#for npm
#The module n makes version-management easy:
sudo npm install n -g
sudo n 0.4.12

#For the latest version:

sudo n stable

#bower installing
sudo npm install -g bower

#setting nginx permission e.g : if guindy_times is the folder name that you need permission to !
chmod +rx -R guindy_times

#for installing hipchat(ubuntu, Kubuntu, Mint, Debian)

sudo su
echo "deb http://downloads.hipchat.com/linux/apt stable main" > \
  /etc/apt/sources.list.d/atlassian-hipchat.list
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
apt-get update
apt-get install hipchat

#for installing hipchat(Fedora, Red hat enterprise Linux,Centos, Oracle linux)

sudo su
echo "[atlassian-hipchat]
name=Atlassian Hipchat
baseurl=http://downloads.hipchat.com/linux/yum
enabled=1
gpgcheck=1
gpgkey=https://www.hipchat.com/keys/hipchat-linux.key
" > /etc/yum.repos.d/atlassian-hipchat.repo
yum install hipchat

#hipchat(for archlinux)

su
curl https://www.hipchat.com/keys/hipchat-linux.key | \
  GNUPGHOME=/etc/pacman.d/gnupg gpg --import 
echo '[atlassian]
SigLevel = PackageOptional DatabaseRequired TrustAll
Server = http://downloads.hipchat.com/linux/arch/$arch
' >> /etc/pacman.conf
pacman -Syy
pacman -S hipchat

#Installing youtube-dl on debian
$ sudo apt-get install python-dev python-pip gcc
$ sudo pip install --upgrade youtube_dl

Source: http://xmodulo.com/2013/03/how-to-save-youtube-videos-on-linux.html

#FOr connecting android with waldorf
