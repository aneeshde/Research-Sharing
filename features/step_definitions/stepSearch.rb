Given(/^I am on the search page$/) do
  visit ("search_pages")
end

When(/^I type in author in search bar$/) do
  fill_in :search, :with => "Author"
  click_button 'Search'
end

Then(/^the page will show the results$/) do
 	visit("http://localhost:3000/search_pages?utf8=%E2%9C%93&search=#{:with}&commit=Search")

end

When(/^I click one of the search results$/) do
  click_link('Author')
  # For now (this iteration), instead of using the link of real paper, 
  # I assume I have an exisiting link and click it.
end


Then(/^it will navigate to the user page which shows the full content of that specific topic$/) do
  visit("http://localhost:3000/search_pages?utf8=%E2%9C%93&search=#{:with}&commit=Search")
end