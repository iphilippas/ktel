json.array!(@destinations) do |destination|
  json.extract! destination, :id, :city, :km_real, :km_plasma
  json.url destination_url(destination, format: :json)
end
