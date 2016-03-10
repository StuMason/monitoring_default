@javascript
 Feature: Testing
 
   Scenario: Testing Wiki
     Given I am on "http://en.wikipedia.org/wiki/Main_Page"
     Then I should see "Welcome to Wikipedia"
   Scenario: Testing Wiki II
     Given I am on "http://en.wikipedia.org/wiki/Main_Page"
     Then I should see "Welcome to Wikipedia"
