json.extract! pessoa, :nome, :id, :tipo, :cargo, :depto, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
