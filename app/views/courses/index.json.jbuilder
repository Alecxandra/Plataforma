json.array!(@courses) do |course|
  json.extract! course, :id, :nombre, :ano, :trimestre
  json.url course_url(course, format: :json)
end
