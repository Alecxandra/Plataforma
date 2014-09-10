json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :codigo, :especialidad, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido
  json.url teacher_url(teacher, format: :json)
end
