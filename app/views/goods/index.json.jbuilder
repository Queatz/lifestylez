json.array!(@goods) do |good|
  json.extract! good, :id, :life_style_id, :title, :url, :description
  json.url good_url(good, format: :json)
end
