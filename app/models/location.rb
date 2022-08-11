class Location < ActiveRecord::Base
    has_many :things_to_dos
    has_many :places_to_gos
    has_many :things_reviews, through: :things_to_dos
    has_many :categories, through: :things_to_dos
    has_many :places_reviews, through: :places_to_gos
end