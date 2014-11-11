Given(/^I am on the user faq page$/)do
  visit eval("new_user_faq_path")
end

When(/^I submit without entering text in the FAQ text box$/) do
  click_button 'Create User faq'
end

Then(/^I should see the error message$/) do
  assert page.has_content?("Question can't be blank");
end

When(/^I submit by entering the faq and selecting a related paper$/) do
  fill_in 'Question', :with => 'sample question 1'
  select "sample paper 2", :from => "Paper"
  click_button 'Create User faq'
end

Then(/^I should see the faq listed on the user faq index page$/) do
  assert page.has_content?("sample question 1");
end
