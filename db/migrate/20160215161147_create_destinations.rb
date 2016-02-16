class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
