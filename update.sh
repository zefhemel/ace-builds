#!/bin/sh

rm -rf ace
curl -L https://github.com/zedapp/ace/archive/master.tar.gz | tar xzf -
cd ace-master
npm install
./Makefile.dryice.js normal
mv build/src ../ace
cd ..
rm -rf ace/snippets
rm ace/worker-* ace/theme-*
