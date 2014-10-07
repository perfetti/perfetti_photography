json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :user_id, :updated_on, :created_on, :published, :publishable
  json.url post_url(post, format: :json)
end
