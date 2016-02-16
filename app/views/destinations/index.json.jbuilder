json.array!(@destinations) do |destination|
  json.extract! destination, :id, :location_id
  json.url destination_url(destination, format: :json)
end
