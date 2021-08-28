class AddEventoRefToFrequenciaEventos < ActiveRecord::Migration[6.1]
  def change
    add_reference :frequencia_eventos, :evento, null: false, foreign_key: true
  end
end
