#encoding:utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :department do
    name Faker::Name.last_name
  end
end
