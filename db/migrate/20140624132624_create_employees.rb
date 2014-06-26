class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :mobile_phone
      t.string :telephone

      t.timestamps
    end
  end
end
