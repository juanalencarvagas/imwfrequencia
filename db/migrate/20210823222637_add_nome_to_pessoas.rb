class AddNomeToPessoas < ActiveRecord::Migration[6.1]
  def change
    add_column :pessoas, :nome, :string
  end
end
