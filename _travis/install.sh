#!/bin/bash

set -e

##
# Install the build tools
##

echo "Install Phing"
pear channel-discover pear.phing.info
pear install phing/phing
phpenv rehash

echo "Set environment variables"
source $TRAVIS_BUILD_DIR/_travis/env.sh

echo "Configure PHP"
phpenv config-rm xdebug.ini
echo 'error_reporting = 22519' >> ~/.phpenv/versions/$(phpenv version-name)/etc/conf.d/travis.ini

echo "Add Pear to include path"
echo "include_path = \""$(php -r 'echo get_include_path();')":"$(pear config-get php_dir)"\"" >> ~/.phpenv/versions/$(phpenv version-name)/etc/php.ini

##
# Set up Codeception tools
##

echo "Creating virtual display"
/sbin/start-stop-daemon --start --quiet --pidfile /tmp/custom_xvfb_99.pid --make-pidfile --background --exec /usr/bin/Xvfb -- :99 -ac -screen 0 1920x1080x8
sleep 2

echo "Installing Chrome Driver"
curl -s -L https://chromedriver.storage.googleapis.com/2.34/chromedriver_linux64.zip -o /tmp/chromedriver.zip
unzip /tmp/chromedriver.zip -d /home/travis/
chmod +x /home/travis/chromedriver
/home/travis/chromedriver --disable-impl-side-painting --verbose --log-path=/tmp/chromedriver.log --url-base=/wd/hub &


echo "Installing the test dependencies"
mkdir -p $DOCUMENTROOT $PROJECT_DIR
composer global require --no-interaction codeception/codeception:2.3.4 facebook/webdriver:1.4.1 flow/jsonpath joomlatools/console
joomla plugin:install joomlatools/console-joomlatools:dev-master

echo "Installing Joomla $JOOMLA"
joomla site:create --projects-dir=$PROJECT_DIR --release=$JOOMLA --symlink=textman --www=$DOCUMENTROOT --mysql-login="root" test

echo "Starting the PHP webserver"
cd $DOCUMENTROOT/textman
php -S localhost:8080 > /dev/null 2>&1 &

cd $TRAVIS_BUILD_DIR
