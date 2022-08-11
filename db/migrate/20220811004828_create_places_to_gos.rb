class CreatePlacesToGos < ActiveRecord::Migration[6.1]
  def change
    create_table :places_to_gos do |t|
      t.string :place
      t.integer :location_id
    end
  end
end
