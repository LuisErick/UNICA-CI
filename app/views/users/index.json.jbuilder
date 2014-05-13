json.array!(@users) do |user|
  json.extract! user, :id, :permission_id, :username, :password, :state
  json.url user_url(user, format: :json)
end
