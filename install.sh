#!/bin/bash


rm -rf /tmp/nanorc
rm -f ~/.nanorc
mv -f /tmp/nanorc/*.nanorc /usr/share/nano/

git clone https://github.com/scopatz/nanorc.git /tmp/nanorc

for f in /usr/share/nano/*.nanorc
do
echo "include $f" >> ~/.nanorc
done




