Feature: Manage Department
  In order to manage the company phonebook
  As a vistor
  I want to create and manage department

  Scenario: Department List
  	Given I have department named Tec,Fina
  	When I go to the list of departments
  	Then I should see "Tec"
  	And I should see "Fina"

  Scenario: Create Department
  	Given I have no "department"
  	And I am on the list of departments
  	When I follow "添加新部门"
  	And I fill in "department[name]" with "service"
  	And I press "保存"
  	Then I should see "新部门添加成功。"
  	And I should see "service"
  	And should have 1 departments
