#!/bin/sh

curl -L https://github.com/ajaxorg/ace/archive/master.tar.gz | tar xzf -
cd ace-master
npm install
./Makefile.dryice.js normal
mv build/src-min-noconflict ../ace
