class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :square_footage
      t.boolean :online_sales
      
      t.timestamps
    end
  end
end
