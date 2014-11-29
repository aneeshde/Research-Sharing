Given(/^I am on the paper page$/) do
  @paper = Paper.new(:title => 'random', :description => 'very funny!')
  @paper.save
  visit 'http://localhost:3000/papers/1'
end

