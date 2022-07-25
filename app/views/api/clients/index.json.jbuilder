json.array! @clientes do |client|
    json.name client.name
    json.direction client.direction
    json.statusClient client.statusClient
    json.rolUser client.rolUser
    json.email client.email
    json.encrypted_password client.encrypted_password

end