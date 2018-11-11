Feature: Random Table Generator
	In order to help create a scenario
	As a GM
	I want to create and manage generators that can produce a random result from a table of possible results

	Scenario: Generators list
		Given that I have generators titled "Magic Type", "Emotion"
		When I go to the list of generators
		Then I should see "Magic Type"
		And I should see "Emotion"

	Scenario: Create TableGenerator
		Given I have no generators
		And I am on the list of generators
		When I follow "New Generator"
		And I fill in "Name" with "Magic Type"
		And I fill in "Contents" with "Enchantment\nEvocation\nTransformation"
		And I press "Create"
		Then I should see "Generator was successfully created"
		And I should see "Magic Type"
		And I should have 1 generator
