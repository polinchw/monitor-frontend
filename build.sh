#!/bin/bash
npm install
ng build
docker build . -t polinchw/monitor-frontend:latest
