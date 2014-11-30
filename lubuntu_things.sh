http://www.everydaylinuxuser.com/2014/06/5-things-to-do-after-installing-lubuntu.html

#Installing zshell
sudo apt-get install zsh

Now to set z-shell as the default shell
 chsh -s `which zsh`
or
chsh -s $(which zsh)

Close and Open your terminal, check the terminal, you will have new, nice prompt! ;)
which firefox

This command shows location of the executable of firefox(which is an application). Similary you could use this which command to see the location of any utility. And $() or the backticks get the value from the which command.

#installing sublime 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

#bash to zshell rbenv issue

$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshenv
$ echo 'eval "$(rbenv init -)"' >> ~/.zshenv
$ echo 'source $HOME/.zshenv' >> ~/.zshrc
$ exec $SHELL

#installing libre office
sudo add-apt-repository ppa:libreoffice/libreoffice-4-2
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install libreoffice

#installing grunt
npm install grunt --save-dev

#installing yeoman
npm install -g yo
npm install -g generator-angular

#installing chromium
sudo apt-get install chromium-browser

#installing mysql
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
