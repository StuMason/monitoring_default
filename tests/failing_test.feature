@javascript
 Feature: Testing
 
   Scenario: Testing Fail
     Given I am on "/"
     Then I should not see "This site is intended only for healthcare professionals resident in the United Kingdom"
   