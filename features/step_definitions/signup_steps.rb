
When(/^I click on the signup link$/) do
  visit eval("new_author_registration_path")
end

Then(/^I should see the signup page$/) do
  page.should have_selector(:button, 'Sign up')
end

Given(/^I am on the signup page$/)do
  visit eval("new_author_registration_path")
end

When(/^I enter valid email ID and password$/) do
  fill_in 'Email', :with => 'john.smith@apple.com'
  fill_in 'Password', :with => 'qwerty123'
  fill_in 'Password confirmation', :with => 'qwerty123'
  click_button 'Sign up'
end

Then(/^I should see the message "Welcome! You have signed up successfully."$/) do
  assert page.has_content?("Welcome! You have signed up successfully.");
end

When(/^I enter different passwords$/) do
  fill_in 'Email', :with => 'demouser@gmail.com'
  fill_in 'Password', :with => 'qwerty123'
  fill_in 'Password confirmation', :with => 'egfh123'
  click_button 'Sign up'
end

Then(/^I should see the error message "Password doesn't match confirmation"$/) do
  assert page.has_content?("Password doesn't match confirmation");
end

When(/^I leave the email field blank$/) do
  fill_in 'Password', :with => 'qwerty123'
  fill_in 'Password confirmation', :with => 'qwerty123'
  click_button 'Sign up'
end

Then(/^I should see the error message "Email can't be blank"$/) do
  assert page.has_content?("Email can't be blank");
end