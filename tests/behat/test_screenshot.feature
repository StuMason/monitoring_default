@javascript
Feature: Testing
  Scenario: Testing Wiki
    Given I am on "/wiki/Main_Page"
    Then I should see "Wiki"
    And I wait
    And I take a screenshot