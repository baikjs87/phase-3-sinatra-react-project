class CreateThingsToDos < ActiveRecord::Migration[6.1]
  def change
    create_table :things_to_dos do |t|
      t.string :activity
      t.integer :location_id
      t.integer :category_id
    end
  end
end
