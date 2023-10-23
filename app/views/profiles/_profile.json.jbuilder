json.extract! profile, :id, :profile_name, :surname, :age, :birthday, :created_at, :updated_at
json.url profile_url(profile, format: :json)
