# README

This is designed to be a bare bones codeception suite, that should be plug and play for any Joomlatools component. All you will need to do is clone the repository to your local project folder:

`cd Projects/logman`

`git clone --depth=1 <remote_repo_url>`

## Codeception installation notes

First we need to get up and running:

`composer global require "codeception/codeception:*"`

also for mailcatcher integration:

`composer global require flow/jsonpath`

`brew install chromedriver`

You can verify correct install by:

`chromedriver --help`

`brew install selenium-server-standalone`

You can verfiy correct install by:

`selenium-server --help`

if this has installed with no problems simply open a new terminal window and

`selenium-server`

#### Problems with either chromedriver or selenium you will need to install manually:

Download and save to a location

https://goo.gl/s4o9Vx

Create an alias

`alias selenium_up='java -jar /Library/Java/Extensions/selenium-server-standalone-2.53.1.jar > /dev/null 2>&1 &'`

Replacing /Library/Java/Extensions/selenium-server-standalone-2.53.1.jar with the path to your selenium-server-standalone-2.53.1.jar

Next up open a new terminal window, we want to launch the selenium server:

`selenium_up`

Remember should the brew installation of selenium-server be successful you only need to run

`selenium-server > /dev/null 2>&1 &` to run in the background without the need for a new terminal window

Navigate to your component project folder and run:

`codecept run acceptance`


## Notes for debugging tests 

Increase the output from each test by appending `--debug`: 

`codecept run acceptance --debug`

Output variables from within the tests with `codecept_debug($var)` when running suite tests in debug mode