require 'rails_helper'

RSpec.describe Post, :type => :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :department_id }
  it { should validate_uniqueness_of :name }
  it { should belong_to(:department) }
  it { should have_and_belong_to_many(:employees)}
end
