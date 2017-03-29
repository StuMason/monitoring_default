@javascript
Feature: Test Fails
  Scenario: Wiki Doesn't Have FooBar
    Given I am on "http://en.wikipedia.org/wiki/Main_Page"
    Then I should see "FooBar"
