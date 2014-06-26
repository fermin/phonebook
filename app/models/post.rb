class Post < ActiveRecord::Base
  attr_accessible :department_id, :name
  validates :name, :department_id, :presence => true
  validates_uniqueness_of :name
  
  has_and_belongs_to_many :employees
  belongs_to :department
end
