json.array!(@messages) do |message|
  json.extract! message, :id, :to, :from, :body, :category
  json.url message_url(message, format: :json)
end
