# Updating tests from 2.5 to 3
Add the following files and directories into your tests directory (if they don’t already exist):
 
```
/tests
features/
    bootstrap/
        FeatureContext.php
behat.yml
composer.json
```
 
The behat.yml should look like this (make sure you update your wd_host and base_url):
 
 ```
default:
  autoload:
    '': %paths.base%/features/bootstrap
  suites:
    monitoring:
      paths:
        - features
      contexts:
        - FeatureContext
      filters:
        tags: @monitoring
   extensions:
     Behat\MinkExtension\Extension:
       goutte:
         guzzle_parameters:
           curl.options:
             CURLOPT_SSL_VERIFYPEER: false
             CURLOPT_CERTINFO: false
             CURLOPT_TIMEOUT: 120
           ssl.certificate_authority: false
       selenium2:
         wd_host: "<your selenium host>"
       base_url: "<your tests base url>"
       browser_name: chrome
 ```

The composer.json should look like this:
 
```
{
    "name": "pfizer/defaultWorkerInstall",
    "description": "Basic install of behat 3 and the required packages for running tests.",
    "type": "project",
    "authors": [
        {
            "name": "stumason",
            "email": "stu@stuartmason.co.uk"
        }
    ],
    "require": {
        "behat/behat": "^3.2",
        "behat/mink": "^1.7",
        "behat/mink-extension": "^2.2",
        "behat/mink-goutte-driver": "^1.2",
        "behat/mink-selenium2-driver": "^1.3",
        "aws/aws-sdk-php": "~3.0"
    },
    "autoload": {
        "classmap": [
            "features/bootstrap"
        ]
    },
    "minimum-stability": "dev"
}
```
 
Then put your tests in the features directory, for example, features/monitoring.feature

``` 
@monitoring
Feature: Test if site is up
  Scenario: Make sure the site is up
    Given I am on "/login"
    Then I should see "Login with Site Credentials"
```

Add your FeatureContext.php file like this:

```
<?php
  use Behat\Behat\Context\Context;
  use Behat\Gherkin\Node\PyStringNode;
  use Behat\Gherkin\Node\TableNode;
  use Behat\MinkExtension\Context\MinkContext;
  /**
   * Defines application features from the specific context.
   */
  class FeatureContext extends MinkContext implements Context {}
```
 
To run the rests, first install composer
 
`php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer`
 
Then run Behat from within your test folder:
 
`vendor/bin/behat`
 
The above command will run all the features in the feature folder. To run a suite specific tests (in the above example, you can see you have a suite called ‘monitoring’ setup that runs all the tests marked with the tag “@monitoring”) then run the following command:
 
`vendor/bin/behat --suite=monitoring`
 
An example of the above default Behat 3 setup can be found here:
 
`https://github.com/StuMason/monitoring_default`
