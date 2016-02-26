@javascript
Feature: Testing Tokens
  Scenario: Testing Wiki
    Given I am on "http://en.wikipedia.org/wiki/Main_Page"
    Then I should see "Wiki"
    Then I should see "Testing" on the page