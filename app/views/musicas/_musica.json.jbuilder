json.extract! musica, :id, :name, :duracao, :letra, :album, :created_at, :updated_at
json.url musica_url(musica, format: :json)
