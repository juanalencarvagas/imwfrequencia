class Evento < ApplicationRecord
    has_one :tipo_evento
    belongs_to :frequencia_evento 
end
