class AddImagemToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :imagem, :string
  end
end
