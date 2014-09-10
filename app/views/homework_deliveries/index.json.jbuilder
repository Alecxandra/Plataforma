json.array!(@homework_deliveries) do |homework_delivery|
  json.extract! homework_delivery, :id, :file_path
  json.url homework_delivery_url(homework_delivery, format: :json)
end
