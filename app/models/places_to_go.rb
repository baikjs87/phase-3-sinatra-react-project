class PlacesToGo < ActiveRecord::Base
    belongs_to :location
    has_many :places_reviews
end