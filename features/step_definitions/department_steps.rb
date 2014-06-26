Given(/^I have department named (.+)$/) do |names|
  names.split(', ').each do |name|
  	Department.create!(:name => name)
  end
end

Given(/^I have post named (.+) and department name "(.*?)"$/) do |names, department_name|
  department = Department.create!(:name => department_name)
  names.split(', ').each do |name|
  	Post.create!(:name => name, :department_id => department.id)
  end
end

Given(/^I have employees named (.+) and mobile_phone (.+) and post name "(.*?)"$/) do |names, mobile_phones, post_name|
  department = FactoryGirl.create(:department)
  post = FactoryGirl.create(:post, :department_id => department.id)
  mobile_phones = mobile_phones.split(",")
  names.split(',').each_with_index do |name, index|
  	Employee.create!(:name => name, :mobile_phone => mobile_phones[index], :post_ids => [post.id])
  end
end

When /^I go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

Given(/^I have no "(.*?)"$/) do |cla|
  cla.classify.constantize.delete_all
end

Given(/^I am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

When /^I follow "([^\"]*)"$/ do |link|
  click_link(link)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |filed, value|
  fill_in(filed, :with => value)
end

When(/^I select department_id with department name "(.*?)" from "(.*?)"$/) do |name, filed|
  select(name, :from => filed)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^should have (\d+) departments$/) do |arg1|
  Department.count.should == arg1.to_i
end

Then(/^should have (\d+) posts$/) do |arg1|
  Post.count.should == arg1.to_i
end
