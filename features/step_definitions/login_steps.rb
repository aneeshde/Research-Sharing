Given(/^I am on the research sharing website login page$/)do
visit eval("new_author_session_path")
end

When(/^I attempt to login without (.*)$/) do |capture|
  fill_in 'Password', :with => 'Password' if /password/.match(capture)
  fill_in 'Email', :with => 'john.smith@apple.com' if /email/.match(capture)
  click_button 'Log in'
end

Then(/^I should see the error message "Invalid email or password"$/) do
  assert page.has_content?("Invalid email or password.");
end


When(/^I enter valid email and password$/) do
  fill_in 'Email', :with => 'aneeshde@gmail.com'
  fill_in 'Password', :with => 'password'
  click_button 'Log in'
end

Then(/^I should see the message "Signed in successfully."$/) do
  assert page.has_content?("Signed in successfully.");
end

