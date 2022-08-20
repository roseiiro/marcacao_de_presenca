class CreateEstudantes < ActiveRecord::Migration[6.1]
  def change
    create_table :estudantes do |t|
      t.string :nome
      t.decimal :nota
      t.string :nif, default: '', null: false

      t.timestamps
    end
  end
end
