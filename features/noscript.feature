@foo
Feature: No Selenium Driver
  Scenario: Wiki Doesn't Have FooBar
    Given I am on "http://en.wikipedia.org/wiki/Main_Page"
    Then I should see "FooBar"

  Scenario: Testing Wiki
    Given I am on "http://en.wikipedia.org/wiki/Main_Page"
    Then I should see "Wiki"