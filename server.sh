#!/bin/bash
rm dist/ -r
npm install
gulp
http-server dist/
