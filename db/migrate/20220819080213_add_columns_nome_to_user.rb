class AddColumnsNomeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nome, :string, default: '', null: false
  end
end
