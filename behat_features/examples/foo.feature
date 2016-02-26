 @javascript @advil.com @example @coupon
 Feature: Coupon Form
 
   Scenario: "Fill in Coupon Field"
     Given I am on "http://www.advil.com/couponsinc-register-form/1097"
     Given I wait for "5" seconds
     And I fill in "First Name" with "Bob"
     And I fill in "Last Name" with "Tester"
     And I fill in "Email" with "alfrednutile@gmail.com"
     And I fill in "Address" with "111 Test"
     And I fill in "City" with "Boston"
     And I click the element located at "#webform-component-field-state > div:nth-child(2) > div:nth-child(1) > a:nth-child(2)"
     Given I wait
     Given I click the element located at ".openSelect > ul:nth-child(2) > li:nth-child(3) > a:nth-child(1)"
     Given I click the element located at "#webform-component-field-dob-month > div:nth-child(2) > div:nth-child(1) > a:nth-child(2)"
     And I wait
     Given I click the element located at ".openSelect > ul:nth-child(2) > li:nth-child(6) > a:nth-child(1)"
     Given I click the element located at "#webform-component-field-dob-year > div:nth-child(1) > div:nth-child(1) > a:nth-child(2)"
     Given I wait
     Given I click the element located at ".openSelect > ul:nth-child(2) > li:nth-child(77) > a:nth-child(1)"
     And I wait
     And I check "edit-submitted-field-gender-1"
     And I fill in "ZIP Code" with "01301"
     And I check "edit-submitted-field-children-under-age-1"
     And I check "edit-submitted-field-site-contact-agreement-1"
     And I check "edit-submitted-field-pfizer-contact-agreement-1"
     Given I wait
     Given I press the element located at "#edit-actions > input:nth-child(1)"
     Given I wait for "10" seconds
     Given I wait
     Given I wait
