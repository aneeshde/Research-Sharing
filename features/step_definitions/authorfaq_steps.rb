Then(/^I should see the FAQ link$/) do
  page.should have_selector(:link_or_button, 'New Faq')
end

When(/^I click on the show link$/) do
  click_link("Show", :match => :first)
end


When(/^I click on the new FAQ link$/) do
  click_link("New Faq", :match => :first)
end


When(/^I fill in the data and submit$/) do
  fill_in :faq_question, :with => "New question1"
  fill_in :faq_answer, :with => "This is the answer"
  fill_in :faq_tag_list, :with => "Earth"
  click_button 'Create Faq'
end


When(/^I click on edit button$/) do
  visit eval('papers_path')
  click_link("Show", :match => :first)
  click_link("Edit", :match => :first)
end

When(/^I modify and click update$/) do
  fill_in :faq_question, :with => "New question123"
  click_button 'Update Faq'
end

When(/^I click on the link show and proceed$/)do
    visit eval('papers_path')
  click_link("Show", :match => :first)
end


Then(/^I should see the updated content$/) do
  assert page.has_content?("New question123");
end