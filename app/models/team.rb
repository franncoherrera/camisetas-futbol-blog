class Team < ApplicationRecord
    has_many :profiles
    has_one_attached :shield 
end
