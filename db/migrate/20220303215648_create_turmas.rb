class CreateTurmas < ActiveRecord::Migration[7.0]
  def change
    create_table :turmas do |t|
      t.string :descricao
      t.integer :estado
      t.string :curso
      t.string :instituicao

      t.timestamps
    end
  end
end
