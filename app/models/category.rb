class Category < ActiveRecord::Base
    has_many :things_to_dos
    has_many :locations, through: :things_to_dos
end