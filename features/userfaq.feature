Feature: User should be able to post post questions and view FAQ's

  This feature is to ensure that user can post questions and view the existing
  FAQ's of the respective papers

  Scenario: Clicking on FAQ link on a paper should display the list of FAQ's
    Given I am on the paper page
    When I click on the FAQ link
    Then I should see the faq index page

#  Scenario: Creating an FAQ
#    Given I am on the FAQ creation page
#    When I enter a question and submit
#    Then I should see the question posted
