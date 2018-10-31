json.extract! usuario, :id, :username, :password, :email, :tipo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
