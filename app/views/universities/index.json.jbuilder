json.array!(@universities) do |university|
  json.extract! university, :id, :nombre, :ciudad, :direccion
  json.url university_url(university, format: :json)
end
