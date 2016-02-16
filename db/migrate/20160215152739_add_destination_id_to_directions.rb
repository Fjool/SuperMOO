class AddDestinationIdToDirections < ActiveRecord::Migration
  def change
    add_column :directions, :destination_id, :integer
    add_index :directions, :destination_id
  end
end
