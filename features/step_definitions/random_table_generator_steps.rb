Given(/I have generators titled (.+)/) do |generators|
  generators.split(', ').each do |g|
    Generator.create!(name: g)
  end
end

When(/I go to (.+)$/) do |page_name|
  visit path_to page_name
end

Then("I should see {string}") do |string|
  expect(page).to have_content(string)
end

Given("I have no generators") do
  Generator.delete_all
end

Given(/I am on (.+)$/) do |page_name|
  visit path_to page_name
end

When("I follow {string}") do |string|
  click_link string
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

When("I press {string}") do |string|
  click_button string
end

Then("I should have {int} generator") do |int|
  Generator.count.should == int.to_i
end
