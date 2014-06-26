class CreateTableEmployeesPosts < ActiveRecord::Migration
  def up
  	create_table :employees_posts do |t|
      t.integer :employee_id
      t.integer :post_id

      t.timestamps
    end
  end

  def down
  end
end
