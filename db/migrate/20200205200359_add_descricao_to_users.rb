class AddDescricaoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :descricao, :string
  end
end
