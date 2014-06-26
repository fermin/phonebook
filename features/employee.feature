Feature: Manage Employee
  In order to manage the company phonebook
  As a vistor
  I want to create and manage employee

  Scenario: Employee List
  	Given I have employees named Zhang,Li and mobile_phone 2121,4343 and post name "Soft"
  	When I go to the list of employees
  	Then I should see "Zhang"
  	And I should see "Li"
