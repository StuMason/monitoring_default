@javascript
Feature: Testing 60 second timeout
  Scenario: Testing Wiki
    Given I am on "http://en.wikipedia.org/wiki/Main_Page"
    Then I should see "Wiki"
    Then I should see "Baz" 
