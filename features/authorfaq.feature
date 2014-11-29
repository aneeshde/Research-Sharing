Feature: Author should be able to post FAQs and Create tags

  This feature is to create and view author FAQs associated with the respective
  papers

  Scenario: Author should be able to create FAQ's
     Given I am on the login page
     When I login with valid credentials
     When I create the paper1 with tags
     When I click on the show link
     Then I should see the FAQ link

  Scenario: Author should be able to create FAQ's
    Given I am on the login page
    When I login with valid credentials
    When I create the paper1 with tags
    When I click on the show link
    When I click on the FAQ link
    Then I should see the faq index page

#  Scenario: Author should be able to create FAQ's
#    Given I am on the login page
#    When I login with valid credentials
#    When I create the paper1 with tags
#    When I click on the show link
#    When I click on the FAQ link
#    When I click on the new faq link and fill the form and submit
#    Then I should see the faq displayed