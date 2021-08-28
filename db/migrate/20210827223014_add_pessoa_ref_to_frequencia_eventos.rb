class AddPessoaRefToFrequenciaEventos < ActiveRecord::Migration[6.1]
  def change
    add_reference :frequencia_eventos, :pessoa, null: false, foreign_key: true
  end
end
