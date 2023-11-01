module ShirtsHelper
    def show_photo_shirt(shirt)
        if shirt.shirt_image.attached?
            image_tag url_for(shirt.shirt_image)
        end
    end 
    def show_photo_profile_card(profile)
        if profile.image.attached?
            image_tag url_for(profile.image)
        end
    end 
    def show_shield_team_card(shirt)
        if shirt.team.shield.attached?
            image_tag url_for(shirt.team.shield)
        end
    end 
end
