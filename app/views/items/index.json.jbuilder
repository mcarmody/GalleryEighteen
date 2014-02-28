json.array!(@items) do |item|
  json.extract! item, :id, :title, :details, :price, :pic,
  json.url item_url(item, format: :json)
end
