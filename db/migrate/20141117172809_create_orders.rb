class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :product_name
      t.integer :quantity

      t.timestamps
    end
  end
end
