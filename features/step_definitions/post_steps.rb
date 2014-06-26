=begin
#encoding:utf-8
#List departments
Given(/^I have post named (.+) and department_id (.+)$/) do |names, department_ids|
  department_ids = department_ids.split(', ')
  names.split(', ').each_with_index do |name, index|
  	Post.create!(:name => name, :department_id => department_ids[index])
  end
end

When /^I go to the list of posts$/ do 
  visit posts_path
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

#new post
Given(/^I have no posts$/) do 
  Post.delete_all
end

Given(/^I am on the list of posts$/) do 
  visit posts_path
end

When /^I follow "添加新职位"$/ do
  click_link("添加新职位")
end

When /^I fill in "post[name]" with "(.*?)"$/ do |value|
  fill_in("post[name]", :with => value)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^should have (\d+) posts$/) do |arg1|
  Post.count.should == arg1.to_i
end
=end