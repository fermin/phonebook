Feature: Manage Post
  In order to manage the company phonebook
  As a vistor
  I want to create and manage post

  Scenario: Post List
  	Given I have post named Soft,Design and department name "Tec"
  	When I go to the list of posts
  	Then I should see "Soft"
  	And I should see "Design"

  Scenario: Create Post
  	Given I have no "post"
    And I have department named Tec
  	And I am on the list of posts
  	When I follow "添加新职位"
  	And I fill in "post[name]" with "soft en"
    And I select department_id with department name "Tec" from "post[department_id]"
  	And I press "保存"
  	Then I should see "新的职位已创建。"
  	And I should see "soft en"
  	And should have 1 posts
