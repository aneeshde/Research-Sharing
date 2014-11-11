Given(/^I am on the papers index page$/)do
  visit eval("papers_path")
end

When(/^I click on the newpaper link$/) do
  click_link "New Paper"
end

Then(/^the page for creating a new page should be displayed$/) do
  page.should have_selector(:button, 'Create Paper')
end

Given(/^I am on the new paper create page$/)do
  visit eval("new_paper_path")
end

When(/^I click on the create paper button after filling the details$/) do
  fill_in 'Title', :with => 'Experiment1'
  fill_in 'Author', :with => 'monica'
  fill_in 'Description', :with => 'sample paper 1'
  click_button 'Create Paper'
end

Then(/^I should see the papers listing page with the created paper$/) do
  page.should have_selector(:button, 'Create Paper')
end