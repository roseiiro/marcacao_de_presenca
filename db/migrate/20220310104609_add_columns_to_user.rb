class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nome, :string, null: false
  end
end
