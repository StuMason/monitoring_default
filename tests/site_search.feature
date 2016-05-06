@javascript
 Feature: Site search
 
   Scenario: Search from homepage
     Given I am on "/"
     Then I should not see "Search_broken"
   
