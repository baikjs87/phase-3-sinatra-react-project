class CreatePlacesReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :places_reviews do |t|
      t.string :title
      t.string :user
      t.text :body
      t.integer :rating
      t.integer :places_to_go_id
    end
  end
end
