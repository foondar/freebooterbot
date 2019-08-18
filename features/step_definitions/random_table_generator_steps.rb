Given(/I have table generators titled (.+)/) do |generators|
  generators.split(', ').each do |g|
    TableGenerator.create!(name: g)
  end
end

When(/I go to (.+)$/) do |page_name|
  visit path_to page_name
end

Then("I should see {string}") do |string|
  expect(page).to have_content(string)
end

Given("I have no table generators") do
  TableGenerator.delete_all
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

Then("I should have {int} table generator") do |int|
  TableGenerator.count.should == int.to_i
end

Given("that I have a table generator titled {string} with contents {string}") do |name, contents|
  TableGenerator.create!(name: name, contents: contents)
end

Then("I should see one option from the {string} contents") do |string|
  generator = TableGenerator.find_by_name(string)
  expect(page).to have_content(generator.contents)
end
