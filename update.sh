#!/bin/sh

rm *.js
curl -L https://github.com/ajaxorg/ace/archive/master.tar.gz | tar xzf -
cd ace-master
npm install
./Makefile.dryice.js normal
mv build/src/* ../
cd ..
rm -rf ace-master
rm -rf snippets
rm worker-* theme-*
