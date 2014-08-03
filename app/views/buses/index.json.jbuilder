json.array!(@buses) do |bus|
  json.extract! bus, :id, :number, :label
  json.url bus_url(bus, format: :json)
end
