Feature: Go back to user page

	As an user
	I can click on one of the search results
	and it will navigate to user page
	and show me the full content of that specific topic

	Scenario: go back to user page
		Given I am on the search page
		When I click one of the search results
		Then it will navigate to the user page which shows the full content of that specific topic