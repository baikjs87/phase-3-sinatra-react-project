class CreateThingsReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :things_reviews do |t|
      t.string :title
      t.string :user
      t.text :body
      t.integer :rating
      t.integer :things_to_do_id
    end
  end
end
