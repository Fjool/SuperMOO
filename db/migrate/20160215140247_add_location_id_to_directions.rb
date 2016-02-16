class AddLocationIdToDirections < ActiveRecord::Migration
  def change
    add_column :directions, :origin_id, :integer
    add_index :directions, :origin_id
  end
end
