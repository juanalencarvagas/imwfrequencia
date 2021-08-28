class AddTipoEventoRefToEventos < ActiveRecord::Migration[6.1]
  def change
    add_reference :eventos, :tipo_eventos, null: false, foreign_key: true
  end
end
