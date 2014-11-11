Feature: Creating a new paper

  This feature is to create a new paper by filling in the appropriate fields

  Scenario: New paper link
    Given I am on the papers index page
    When I click on the newpaper link
    Then the page for creating a new page should be displayed

#  Scenario: Creating a new paper
#    Given I am on the new paper create page
#    When I click on the create paper button after filling the details
#    Then I should see the papers listing page with the created paper