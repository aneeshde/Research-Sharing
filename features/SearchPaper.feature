Feature: Search Paper

	As a user
	so that I can search the paper by title or tags

	Scenario: search the paper by title
		Given I am on the login page
        When I login with valid credentials
		When I type in title in search box
		Then the page will show the results

    Scenario: search the papers by tags
      Given I am on the login page
      When I login with valid credentials
      When I create the paper1 with tags
      When I create the paper2 with tags
      When I click on the tags link
      Then the page should display papers according to tags