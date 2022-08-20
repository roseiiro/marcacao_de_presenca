class CreateTurmas < ActiveRecord::Migration[6.1]
  def change
    create_table :turmas do |t|
      t.string :identificacao_da_turma, default: '', null: false
      t.string :descricao
      t.decimal :quantidade_de_estudante

      t.timestamps
    end
  end
end
