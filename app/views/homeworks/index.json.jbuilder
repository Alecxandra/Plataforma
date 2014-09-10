json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :descripcion, :fecha_asignacion, :fecha_entrega, :nota
  json.url homework_url(homework, format: :json)
end
