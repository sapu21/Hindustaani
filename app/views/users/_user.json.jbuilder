json.extract! user, :id, :name, :adharnumber, :birthdate, :father, :mother, :children, :created_at, :updated_at
json.url user_url(user, format: :json)
