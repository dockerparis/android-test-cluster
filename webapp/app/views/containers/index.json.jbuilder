json.array!(@containers) do |container|
  json.extract! container, :id, :name, :ip
  json.url container_url(container, format: :json)
end
