class Profile < ApplicationRecord
    has_one_attached :image 
    belongs_to :user
    has_many :shirts
    belongs_to :team 
    belongs_to :position
end
