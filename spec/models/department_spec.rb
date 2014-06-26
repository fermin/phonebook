require 'rails_helper'

RSpec.describe Department, :type => :model do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should have_many(:posts) }
  it { should have_many(:employees).through(:posts) }

  describe "ancestry" do
    let(:department1) { FactoryGirl.create(:department, name: Faker::Name.last_name) }
    let(:department2) { FactoryGirl.create(:department, name: Faker::Name.last_name, parent_id: department1.id) }
    it "returns department array" do
      department1.save && department2.save
    	Department.ancestry_options(Department.scoped.arrange(:order => 'name')) {|i| "#{'---------' * i.depth} #{i.name}" }.should == [[" " + department1.name, department1.id], ["--------- #{department2.name}", department2.id]]
	  end
  end
end
