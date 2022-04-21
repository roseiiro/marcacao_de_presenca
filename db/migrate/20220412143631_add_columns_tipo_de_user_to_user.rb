class AddColumnsTipoDeUserToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tipo_de_user, :integer, default: 0, null: false
  end
end
