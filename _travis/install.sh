#!/bin/bash

set -e 

echo "Testing required dependencies"
java -version
google-chrome-stable --version

echo "Creating virtual display"
/sbin/start-stop-daemon --start --quiet --pidfile /tmp/custom_xvfb_99.pid --make-pidfile --background --exec /usr/bin/Xvfb -- :99 -ac -screen 0 1920x1080x8
sleep 2

echo "Installing Chrome Driver"
curl -s -L https://chromedriver.storage.googleapis.com/2.33/chromedriver_linux64.zip -o /tmp/chromedriver.zip
unzip /tmp/chromedriver.zip -d /home/travis/
chmod +x /home/travis/chromedriver
/home/travis/chromedriver --url-base=/wd/hub &

echo "Setting up the test database"
mysql -uroot -e "create database IF NOT EXISTS sites_test;"
mysql -uroot sites_test < tests/_data/dump.sql

echo "Starting MailHog"
curl -s -L https://github.com/mailhog/MailHog/releases/download/v0.2.0/MailHog_linux_amd64 -o mailhog
chmod +x mailhog
./mailhog > /dev/null 2>&1 &
sleep 1
