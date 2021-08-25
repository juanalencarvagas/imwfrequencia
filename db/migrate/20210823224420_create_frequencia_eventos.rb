class CreateFrequenciaEventos < ActiveRecord::Migration[6.1]
  def change
    create_table :frequencia_eventos do |t|
      t.integer :id_pessoa
      t.integer :id_evento
      t.string :status

      t.timestamps
    end
  end
end
