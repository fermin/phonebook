#encoding:utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    name Faker::Name.first_name
  end
end
