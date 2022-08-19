class CreateUtilizadors < ActiveRecord::Migration[6.1]
  def change
    create_table :utilizadors do |t|
      t.string :nome_completo
      t.string :nif
      t.string :email
      t.references :turma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
