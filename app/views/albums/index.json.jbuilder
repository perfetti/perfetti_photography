json.array!(@albums) do |album|
  json.extract! album, :id, :post_id, :updated_on, :created_on, :user_id
  json.url album_url(album, format: :json)
end
