@javascript
 Feature: Testing
 
   Scenario: Testing Homepage
     Given I am on "/"
     Then I should see "This site is intended only for healthcare professionals resident in the United Kingdom"
   Scenario: Testing Homepage II
     Given I am on "/"
     Then I should see "sign in"
   Scenario: Testing Homepage III
     Given I am on "/"
     Then I should see "For healthcare professionals only"     
