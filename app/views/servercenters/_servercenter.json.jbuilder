json.extract! servercenter, :id, :code, :server_available, :servers_capacity, :created_at, :updated_at
json.url servercenter_url(servercenter, format: :json)

json.country do
    json.name servercenter&.country&.name
    json.language servercenter&.country&.language&.name
end







