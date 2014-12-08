
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

When(/^I click on the edit link$/) do
  click_link("Edit", :match => :first)

end

When(/^I edit and submit$/) do
  fill_in 'Title', :with => 'Experiment123'
  click_button 'Update Paper'
end


Then(/^I should see the updated message$/) do
  assert page.has_content?("Paper was successfully updated");
end

When(/^I click on the destroy link$/) do
  click_link("Destroy", :match => :first)
end


When(/^I click on the back link$/) do
  click_link("Back", :match => :first)
end

Then(/^I should see a popup$/) do
  page.driver.browser.window_handles.length.should == 1
end