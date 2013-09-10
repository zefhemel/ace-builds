#!/bin/sh

rm -rf ace
curl -L https://github.com/ajaxorg/ace/archive/master.tar.gz | tar xzf -
cd ace-master
npm install
./Makefile.dryice.js normal
mv build/src-noconflict ../ace
rm -rf ace/snippets
rm ace/worker-*
