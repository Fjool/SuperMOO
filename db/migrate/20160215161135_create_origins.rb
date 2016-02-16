class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
