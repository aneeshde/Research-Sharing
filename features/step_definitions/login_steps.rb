Given(/^I am on the research sharing website login page$/)do
visit eval("new_author_session_path")
end

When(/^I attempt to login without (.*)$/) do |capture|
  fill_in 'Password', :with => 'Password' if /password/.match(capture)
  fill_in 'Login', :with => 'john.smith@apple.com' if /email/.match(capture)
  click_button 'Log in'
end


Then(/^I should see the error message "Invalid email or password"$/) do
  assert page.has_content?("Invalid login or password.");
end


When(/^there is an existing author$/) do
  @author = Author.new( :email => 'aneesh@gmail.com', :password => 'qwerty123', :password_confirmation => 'qwerty123')
  @author.save
end

When(/^I enter valid email and password$/) do
  fill_in 'Login', :with => 'aneesh@gmail.com'
  fill_in 'Password', :with => 'qwerty123'
  click_button 'Log in'
end

Then(/^I should see the message "Signed in successfully."$/) do
  assert page.has_content?("Signed in successfully.");
end

