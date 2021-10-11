json.extract! invitation, :id, :name, :email, :city, :nutrition_professional, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
