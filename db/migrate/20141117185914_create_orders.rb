class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :quantity
      t.string :integer

      t.timestamps
    end
  end
end
