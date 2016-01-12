json.array!(@life_styles) do |life_style|
  json.extract! life_style, :id, :user_id, :title, :description
  json.url life_style_url(life_style, format: :json)
end
