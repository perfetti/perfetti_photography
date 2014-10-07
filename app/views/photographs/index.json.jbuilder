json.array!(@photographs) do |photograph|
  json.extract! photograph, :id, :album_id, :title, :description, :asset_url, :created_at, :updated_on, :user_id
  json.url photograph_url(photograph, format: :json)
end
