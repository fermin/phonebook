class Employee < ActiveRecord::Base
  attr_accessible :address, :mobile_phone, :name, :telephone, :post_ids
  validates :name, :mobile_phone, :post_ids, :presence => true
  has_and_belongs_to_many :posts
  has_many :departments, :through => :posts
end
