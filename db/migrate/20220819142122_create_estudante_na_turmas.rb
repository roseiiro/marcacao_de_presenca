class CreateEstudanteNaTurmas < ActiveRecord::Migration[6.1]
  def change
    create_table :estudante_na_turmas do |t|
      t.references :turma, null: false, foreign_key: true
      t.references :estudante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
