class AddStoresToPublishers < ActiveRecord::Migration[5.2]
  def change
    add_reference :publishers, :store, foreign_key: true
  end
end
