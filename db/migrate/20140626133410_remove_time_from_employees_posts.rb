class RemoveTimeFromEmployeesPosts < ActiveRecord::Migration
  def change
    remove_column :employees_posts, :created_at
    remove_column :employees_posts, :updated_at
    remove_column :employees_posts, :id
  end
end
