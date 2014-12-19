When(/^I click on the logout link$/) do
  click_link("Logout", :match => :first)
end


When(/^I type in title in the search box$/) do
    fill_in :search, :with => "Experiment1"
    click_button 'Search'
end


When(/^I type in FAQ$/) do
  click_link("Show", :match => :first)
  click_link("New Faq", :match => :first)
  fill_in :faq_question, :with => "New question"
  click_button 'Create Faq'
end


Then(/^I should see the FAQ$/) do
  assert page.has_content?("New question");
end