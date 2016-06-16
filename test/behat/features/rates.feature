@api @javascript @global
Feature: Manage Rates

  Scenario: Roomify manager
    Given I am logged in as a user with the "roomify manager" role
    Then I click "Pricing" in the "Casa Azzurra" row
    And I wait 5 seconds
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[2]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Standard\" rate"
    And I click on the element with css selector ".close"
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[3]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Weekly\" rate"
    And I click on the element with css selector ".close"
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[4]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Monthly\" rate"
    And I click on the element with css selector ".close"
    Then I visit "user"
    Then I click "Pricing" in the "Casa Sul Mare" row
    And I wait 5 seconds
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[2]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Standard\" rate"
    And I click on the element with css selector ".close"
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[3]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Weekly\" rate"
    And I click on the element with css selector ".close"
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[4]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Monthly\" rate"
    And I click on the element with css selector ".close"

  Scenario: Property owner
    Given I am logged in as a user with the "property owner" role
    Then I click on the text "click here to add a new property"
    And I wait for AJAX to finish
    Then I fill in "property_name" with "Property owner casa"
    And I select the radio button "Single-Unit (entire home)"
    Then I press "Next"
    And I wait for AJAX to finish
    Then I fill in "max_occupants" with "4"
    And I fill in "default_price" with "100"
    Then I press "create property and add details"
    And I wait for AJAX to finish
    Then I fill in wysiwyg on field "field_sp_description[en][0][value]" with "Test description"
    And I press "Save Property"
    Then I click "Pricing" in the "Property owner casa" row
    And I wait 5 seconds
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[2]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Standard\" rate"
    And I click on the element with css selector ".close"
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[3]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Weekly\" rate"
    And I click on the element with css selector ".close"
    And I click on the element with xpath "//*[contains(concat(' ',@class,' '),' casa-pricing-calendar ')]//*[contains(concat(' ',@class,' '),' fc-resource-area ')]//tr[4]//*[contains(concat(' ',@class,' '),' fc-cell-content ')]"
    And I wait for AJAX to finish
    And I should see "Manage \"Monthly\" rate"
    And I click on the element with css selector ".close"
    Then I visit "user"
