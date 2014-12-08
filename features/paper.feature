Feature: Creating a new paper

  This feature is to create a new paper by filling in the appropriate fields

  Scenario: Creating a new paper
    Given I am on the login page
    When I login with valid credentials
    When I click on the create paper button and fill in the details and submit
    Then I should see the papers listing page with the created paper

  Scenario: Editing a paper
    Given I am on the login page
    When I login with valid credentials
    When I click on the create paper button and fill in the details and submit
    When I click on the edit link
    When I edit and submit
    Then I should see the updated message

  Scenario: Destroying a paper
    Given I am on the login page
    When I login with valid credentials
    When I click on the create paper button and fill in the details and submit
    When I click on the back link
    When I click on the destroy link
    Then I should see a popup
