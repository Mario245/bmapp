json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :no_of_bedrooms, :rent, :apt_no, :no_of_floors
  json.url apartment_url(apartment, format: :json)
end
