json.array!(@directions) do |direction|
  json.extract! direction, :id, :description
  json.url direction_url(direction, format: :json)
end
