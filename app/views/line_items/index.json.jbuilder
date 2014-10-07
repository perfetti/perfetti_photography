json.array!(@line_items) do |line_item|
  json.extract! line_item, :id, :photograph_id, :price_cents, :cart_id, :user_id, :state
  json.url line_item_url(line_item, format: :json)
end
