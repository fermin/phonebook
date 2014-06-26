class AddAncestryToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :ancestry, :string
    add_index :departments, [:ancestry], :name => :ancestry_index
  end
end
