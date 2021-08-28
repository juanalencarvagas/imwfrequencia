class RemoveIdPessoaFromFrequenciaEventos < ActiveRecord::Migration[6.1]
  def change
    remove_column :frequencia_eventos, :id_pessoa, :integer
  end
end
