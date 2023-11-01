class Shirt < ApplicationRecord
    has_one_attached :shirt_image 


    has_rich_text :shirt_description
    belongs_to :team 
    belongs_to :profile

    validate :shirt_description_presence
    validates :shirt_title, presence: {message: "El título es requerido"}
    validates :birth_year, presence: {message: "El año es requerido"}
    validates :team, presence: {message: "El equipo es requerido"}
    validates :shirt_image, presence: {message: "La foto es requerida"}



    private
    def shirt_description_presence
        if shirt_description.blank? || shirt_description.body.blank?
            #Entra pero no se como agregarle el error
    end
    end
end
