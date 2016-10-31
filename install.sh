#!/bin/bash


rm -rf /tmp/nanorc
rm -f ~/.nanorc

git clone https://github.com/scopatz/nanorc.git /tmp/nanorc
mv -f /tmp/nanorc/*.nanorc /usr/share/nano/
touch ~/.nanorc
for f in /usr/share/nano/*.nanorc
do
echo "include $f" >> ~/.nanorc
done




