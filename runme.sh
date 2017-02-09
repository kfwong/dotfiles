#!/bin/bash

rsync -avhR ~/./.config/openbox/autostart .
rsync -avhR ~/./.config/openbox/rc.xml .
rsync -avhR ~/./.config/openbox/scripts/ .
rsync -avhR ~/./.config/dunst/dunstrc .
rsync -avhR ~/./.config/obmenu-generator/config.pl .
rsync -avhR ~/./.config/obmenu-generator/schema.pl .
rsync -avhR ~/./.config/termite/config .
rsync -avhR ~/./.config/tint2/default.tint2rc .
rsync -avhR ~/./.config/tint2/tint2confrc .
rsync -avhR ~/./.config/tint2/tint2rc .
rsync -avhR ~/./.bash_profile .
rsync -avhR ~/./.bashrc .
rsync -avhR ~/./.gitconfig .
rsync -avhR /etc/vimrc .
rsync -avhR /usr/share/vim/vimfiles/colors/molokai.vim .
rsync -avhR ~/./.dircolors
