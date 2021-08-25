class CreateTipoEventos < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_eventos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
