@javascript
 Feature: Testing
 
   Scenario: Testing Wiki
     Given I am on "/"
     Then I should see "This site is intended only for healthcare professionals resident in the United Kingdom"
   Scenario: Testing Wiki II
     Given I am on "/"
     Then I should see "sign in"
