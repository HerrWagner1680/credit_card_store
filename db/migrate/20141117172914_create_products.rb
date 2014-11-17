class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.integer :order_number
      t.string :inventory_id

      t.timestamps
    end
  end
end
