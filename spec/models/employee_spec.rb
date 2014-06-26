require 'rails_helper'

RSpec.describe Employee, :type => :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :mobile_phone }
  it { should have_and_belong_to_many(:posts)}
  it { should have_many(:departments).through(:posts) }
end
