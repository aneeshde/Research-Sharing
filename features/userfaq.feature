Feature: User should be able to post questions and view FAQ's

  This feature is to ensure that user can post questions and view the existing
  FAQ's of the respective papers

  Scenario: Creating a new paper and searching as a user
    Given I am on the login page
    When I login with valid credentials
    When I click on the create paper button and fill in the details and submit
    When I click on the logout link
    When I type in title in the search box
    When I type in FAQ
    Then I should see the FAQ

