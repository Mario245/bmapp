json.array!(@buildings) do |building|
  json.extract! building, :id, :address, :no_of_floors, :total_apts, :long, :lat
  json.url building_url(building, format: :json)
end
