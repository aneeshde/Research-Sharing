Then(/^I should see the FAQ link$/) do
  page.should have_selector(:link_or_button, 'FAQ')
end

When(/^I click on the show link$/) do
  click_link("Show", :match => :first)
end

Then(/^I should see the faq index page$/) do
  page.should have_selector(:link_or_button, 'New Faq')
end

When(/^I click on the FAQ link$/) do
  click_link "FAQ"
end

