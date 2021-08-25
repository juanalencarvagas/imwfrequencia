json.extract! evento, :id, :data, :id_tipo_evento, :descricao, :created_at, :updated_at
json.url evento_url(evento, format: :json)
