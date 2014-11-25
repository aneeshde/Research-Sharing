Given(/^I am on the login page$/) do
  visit eval("new_author_session_path")
end

When(/^I login with valid credentials$/) do
  @author = Author.new(:email => 'monica1291@gmail.com', :password => 'password', :password_confirmation => 'password')
  @author.save
  fill_in 'Login', :with => 'monica1291@gmail.com'
  fill_in 'Password', :with => 'password'
  click_button 'Log in'
end

When(/^I type in title in search box$/) do
  fill_in :search, :with => "deccan"
  click_button 'Search'
end

Then(/^the page will show the results$/) do
  page.should have_selector('table', :count => 1)
end

When(/^I create the paper1 with tags$/) do
  #find_link('New Paper').click
  click_link "New Paper"
  fill_in 'Title', :with => 'Experiment1'
  fill_in 'Description', :with => 'sample paper 1'
  fill_in 'Tags (separated by commas)', :with => 'earth'
  click_button 'Create Paper'
  visit eval("papers_path")
end

When(/^I create the paper2 with tags$/) do
  click_link "New Paper"
  fill_in 'Title', :with => 'Experiment2'
  fill_in 'Description', :with => 'This is a demo paper'
  fill_in 'Tags (separated by commas)', :with => 'water'
  click_button 'Create Paper'
  visit eval("papers_path")
end

When(/^I click on the tags link$/) do
  click_link("earth", :match => :first)
end

Then(/^the page should display papers according to tags$/) do
  page.should have_selector('table', :count => 1)
end
