#!/bin/bash

set -e 

echo "Configuring PHP"
phpenv config-rm xdebug.ini
echo 'error_reporting = 22519' >> ~/.phpenv/versions/$(phpenv version-name)/etc/conf.d/travis.ini

##
# Set up Codeception tools
##

echo "Creating virtual display"
/sbin/start-stop-daemon --start --quiet --pidfile /tmp/custom_xvfb_99.pid --make-pidfile --background --exec /usr/bin/Xvfb -- :99 -ac -screen 0 1920x1080x8
sleep 2

echo "Installing GeckoDriver"
curl -s -L https://github.com/mozilla/geckodriver/releases/download/v0.18.0/geckodriver-v0.18.0-linux64.tar.gz -o /tmp/geckodriver.tar.gz
tar -xvf /tmp/geckodriver.tar.gz -C /home/travis/
chmod +x /home/travis/geckodriver

echo "Installing Selenium server"
curl -s -L http://selenium-release.storage.googleapis.com/3.4/selenium-server-standalone-3.4.0.jar -o selenium-server-standalone.jar
export DISPLAY=localhost:99.0
java -Xmx1024m -Dwebdriver.gecko.driver=/home/travis/geckodriver -jar selenium-server-standalone.jar -port 4444 > selenium-output.log 2> selenium-error.log &


echo "Installing the test dependencies"
mkdir -p $DOCUMENTROOT $PROJECT_DIR
composer global require --no-interaction codeception/codeception:2.3.4 facebook/webdriver:1.4.1 flow/jsonpath joomlatools/console
joomla plugin:install joomlatools/console-joomlatools:dev-master

echo "Installing Joomla $JOOMLA"
joomla site:create --projects-dir=$PROJECT_DIR --release=$JOOMLA --www=$DOCUMENTROOT --mysql-login="root" test


echo "Starting the standalone webserver"
cd $TRAVIS_BUILD_DIR/code
php -dshort_open_tag=On -S localhost:8080 ../scripts/codeception/router.php > /dev/null 2>&1 &