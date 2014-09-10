json.array!(@students) do |student|
  json.extract! student, :id, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido
  json.url student_url(student, format: :json)
end
