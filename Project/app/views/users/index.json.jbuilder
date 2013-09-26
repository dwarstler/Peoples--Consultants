json.array!(@users) do |user|
  json.extract! user, :username, :user_id, :integer
  json.url user_url(user, format: :json)
end
