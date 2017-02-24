@javascript
Feature: Test Fails
  Scenario: Testing Wiki
    Given I am on "http://en.wikipedia.org/wiki/Main_Page"
    Then I should see "FooBar"
