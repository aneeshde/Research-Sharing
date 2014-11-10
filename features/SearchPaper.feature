Feature: Search Paper

	As an user
	so that I can search the paper by authors or titles

	Scenario: search the paper by author
		Given I am on the search page
		When I type in author in search bar
		Then the page will show the results
