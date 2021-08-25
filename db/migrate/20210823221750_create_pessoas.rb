class CreatePessoas < ActiveRecord::Migration[6.1]
  def change
    create_table :pessoas do |t|
      t.string :tipo
      t.string :cargo
      t.string :depto

      t.timestamps
    end
  end
end
