json.array!(@hardwares) do |hardware|
  json.extract! hardware, :id, :width, :height, :ram, :gps
  json.url hardware_url(hardware, format: :json)
end
