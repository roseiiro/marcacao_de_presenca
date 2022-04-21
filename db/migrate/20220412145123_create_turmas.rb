class CreateTurmas < ActiveRecord::Migration[6.1]
  def change
    create_table :turmas do |t|
      t.string :descricao, default: '', null: false
      t.decimal :quantidade_de_estudantes, default: 0, null: false

      t.timestamps
    end
  end
end
