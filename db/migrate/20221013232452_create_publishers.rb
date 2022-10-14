class CreatePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :publishers do |t|
      t.string :name
      t.float :cost
      t.boolean :figurines_available

      t.timestamps
    end
  end
end
