#!/bin/bash
rm dist/ -rf
npm install
gulp
http-server dist/
