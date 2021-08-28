class RemoveIdTipoEventoFromEventos < ActiveRecord::Migration[6.1]
  def change
    remove_column :eventos, :id_tipo_evento, :integer
  end
end
