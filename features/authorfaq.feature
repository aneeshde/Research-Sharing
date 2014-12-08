Feature: Author should be able to post FAQs and Create tags

  This feature is to create and view author FAQs associated with the respective
  papers

  Scenario: Author should be able to create FAQ's
     Given I am on the login page
     When I login with valid credentials
     When I create the paper1 with tags
     When I click on the show link
     Then I should see the FAQ link

  Scenario: Viewing all FAQ's
    Given I am on the login page
    When I login with valid credentials
    When I create the paper1 with tags
    When I click on the show link
    When I click on the FAQ link
    Then I should see the faq index page

  Scenario: Updating an FAQ
    Given I am on the login page
    When I login with valid credentials
    When I click on the create paper button and fill in the details and submit
    When I click on the FAQ link
    When I click on the new FAQ link
    When I fill in the data and submit
    When I click on edit button
    When I modify and click update
    Then I should see the updated content

  Scenario: Destroying an FAQ
    Given I am on the login page
    When I login with valid credentials
    When I click on the create paper button and fill in the details and submit
    When I click on the FAQ link
    When I click on the new FAQ link
    When I fill in the data and submit
    When I click on the back link
    When I click on the destroy link
    Then I should see a popup