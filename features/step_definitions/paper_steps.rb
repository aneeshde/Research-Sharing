
When(/^I click on the create paper button and fill in the details and submit$/) do
  click_link "New Paper"
  fill_in 'Title', :with => 'Experiment1'
  fill_in 'Description', :with => 'sample paper 1'
  fill_in 'Tags (separated by commas)', :with => 'earth'
  click_button 'Create Paper'
end

Then(/^I should see the papers listing page with the created paper$/) do
  assert page.has_content?("Paper was successfully created.");
end