#Feature: User should be able to post questions
#
#  Scenario: Blank Question
#    Given I am on the user faq page
#    When I submit without entering text in the FAQ text box
#    Then I should see the error message
#
#  Scenario: Post the question
#    Given I am on the user faq page
#    When I submit by entering the faq and selecting a related paper
#    Then I should see the faq listed on the user faq index page