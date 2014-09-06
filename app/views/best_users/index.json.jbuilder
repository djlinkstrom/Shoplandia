json.array!(@best_users) do |best_user|
  json.extract! best_user, :id, :email
  json.url best_user_url(best_user, format: :json)
end
