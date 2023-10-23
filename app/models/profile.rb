class Profile < ApplicationRecord
    has_one_attached :image 
    belongs_to :user
    has_many :shirts
    belongs_to :team 
    belongs_to :position


    validates :image, presence: { message: "La foto es requerida." }
    validates :profile_name, presence: { message: "El nombre es requerido." }
    validates :surname, presence: { message: "El apellido es requerido." }
    validates :age, presence: { message: "La edad es requerido." }
    validates :birthday, presence: { message: "La fecha de nacimiento es requerida." }
    validates :user_id, presence: true
    validates :team_id, presence: { message: "El equipo es requerido." }
    validates :position_id, presence: { message: "La posicion es requerida." }
end
