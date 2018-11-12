Feature: Random Table Generator
	In order to help create a scenario
	As a GM
	I want to create and manage generators that can produce a random result from a table of possible results

	Scenario: TableGenerators list
		Given that I have table generators titled "Magic Type", "Emotion"
		When I go to the list of table generators
		Then I should see "Magic Type"
		And I should see "Emotion"

	Scenario: Create TableGenerator
		Given I have no table generators
		And I am on the list of table generators
		When I follow "New Table Generator"
		And I fill in "Name" with "Magic Type"
		And I fill in "Contents" with "Enchantment\nEvocation\nTransformation"
		And I press "Create"
		Then I should see "Table generator was successfully created"
		And I should see "Magic Type"
		And I should have 1 table generator
