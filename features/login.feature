#Feature: Login procedure to access the papers
#
#  The first step for the author is to login to the website
#  to access the site features.
#
#  Scenario: Password is required for logging in for users with existing accounts
#    Given I am on the research sharing website login page
#    When I attempt to login without password
#    Then I should see the error message "Invalid email or password"
#
#  Scenario: Email is required for logging in for users with existing accounts
#    Given I am on the research sharing website login page
#    When I attempt to login without email
#    Then I should see the error message "Invalid email or password"
#
#  Scenario: When successfully logged in
#    Given I am on the research sharing website login page
#    When I enter valid email and password
#    Then I should see the message "Signed in successfully."
#
#
#
#
