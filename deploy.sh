#!/bin/bash

cd /var/www/html || exit

git pull origin main >> /var/log/deploy.log 1>&1
