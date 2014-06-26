#encoding:utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    name Faker::Name.first_name + Faker::Name.last_name
    address Faker::Address.city
    mobile_phone Faker::PhoneNumber.phone_number
    telephone Faker::PhoneNumber.phone_number
  end
end
