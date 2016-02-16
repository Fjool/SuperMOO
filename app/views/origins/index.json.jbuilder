json.array!(@origins) do |origin|
  json.extract! origin, :id, :location_id
  json.url origin_url(origin, format: :json)
end
