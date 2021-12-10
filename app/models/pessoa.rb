class Pessoa < ApplicationRecord
    #belongs_to :frequencia_eventos
    validates :tipo, presence: true
end
