require 'rails_helper'

describe "Phonebook API" do
  it 'sends a list of employees' do
  	department =  FactoryGirl.create(:department)
  	post = FactoryGirl.create(:post, :department_id => department.id)
    FactoryGirl.create(:employee, :post_ids => [post.id])

    get '/api/v1/employees'

    expect(response).to be_success           
    json = JSON.parse(response.body)
    expect(json.length).to eq(1) 
  end

  it 'sends an employees by id' do
  	department =  FactoryGirl.create(:department)
  	post = FactoryGirl.create(:post, :department_id => department.id)
    employee = FactoryGirl.create(:employee, :post_ids => [post.id], :name => "t1", :mobile_phone => "123")
    employee.save
    get "/api/v1/employees/#{employee.id}"
    expect(response).to be_success           
    json = JSON.parse(response.body)
    expect(json["name"]).to eq("t1") 
    expect(json["mobile_phone"]).to eq("123") 
  end

  it 'sends a list of departments' do
  	department =  FactoryGirl.create(:department)
    get '/api/v1/departments'
    expect(response).to be_success           
    json = JSON.parse(response.body)
    expect(json.length).to eq(1) 
  end

  it 'sends a list of employees' do
  	department =  FactoryGirl.create(:department, :name => "D1")
    department.save
    get "/api/v1/departments/#{department.id}"
    expect(response).to be_success           
    json = JSON.parse(response.body)
    expect(json["name"]).to eq("D1") 
  end
end
