Feature: Signup procedure for new authors

  This feature deals with the signup process for new authors.

    Scenario: Signup page for new authors
    Given I am on the research sharing website login page
    When I click on the signup link
    Then I should see the signup page

  Scenario: Signup procedure
    Given I am on the signup page
    When I enter valid email ID and password
    Then I should see the message "Welcome! You have signed up successfully."

  Scenario: Password and Password confirmation mismatch
    Given I am on the signup page
    When I enter different passwords
    Then I should see the error message "Password doesn't match confirmation"

  Scenario: Email field is blank
    Given I am on the signup page
    When I leave the email field blank
    Then I should see the error message "Email can't be blank"
