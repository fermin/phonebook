class Department < ActiveRecord::Base
  attr_accessible :name, :ancestry, :parent_id
  has_many :posts
  has_many :employees, :through => :posts
  validates :name, :presence => true, :uniqueness => true
  has_ancestry

  def self.ancestry_options(items, &block)
    return ancestry_options(items){ |i| "#{'---' * i.depth} #{i.name}" } unless block_given?
    result = []
    items.map do |item, sub_items|
      result << [yield(item), item.id]
      result += ancestry_options(sub_items, &block)
    end
    result
  end

end
