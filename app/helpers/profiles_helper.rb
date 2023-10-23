module ProfilesHelper
    #Validar si existe el perfil
    def validates_profile
        if current_user.profile.present?
            redirect_to profile_path(current_user.profiles_id)
        end
    end 

    #Validar si existe el escudo, lo muestra con la clase "png"
    def show_shield_team(profile)
        if profile.team.shield.attached?
            image_tag url_for(@profile.team.shield), class: "png"
        end
    end 

    #Validar si existe la foto del usuario, lo muestra con la clase "foto"
    def show_photo_profile(profile)
        if profile.image.attached?
            image_tag url_for(@profile.image), class: "foto"
        end
    end 
end
