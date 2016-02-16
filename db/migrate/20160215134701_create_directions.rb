class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
