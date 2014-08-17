json.array!(@routes) do |route|
  json.extract! route, :id, :code_name, :destination_id, :route_type_id, :time, :night
  json.url route_url(route, format: :json)
end
