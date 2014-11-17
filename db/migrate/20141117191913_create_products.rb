class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :inventory_id
      t.string :product_name

      t.timestamps
    end
  end
end
