json.array!(@route_types) do |route_type|
  json.extract! route_type, :id, :description
  json.url route_type_url(route_type, format: :json)
end
