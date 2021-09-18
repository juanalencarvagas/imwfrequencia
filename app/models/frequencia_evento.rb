class FrequenciaEvento < ApplicationRecord
    has_one :evento
    has_many :pessoas
end
