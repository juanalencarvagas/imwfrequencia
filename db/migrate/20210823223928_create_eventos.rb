class CreateEventos < ActiveRecord::Migration[6.1]
  def change
    create_table :eventos do |t|
      t.datetime :data
      t.integer :id_tipo_evento
      t.text :descricao

      t.timestamps
    end
  end
end
