class ThingsToDo < ActiveRecord::Base
    belongs_to :location
    has_many :things_reviews
    belongs_to :category
end