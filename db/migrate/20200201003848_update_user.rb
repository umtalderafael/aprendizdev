class UpdateUser < ActiveRecord::Migration[5.1]
  def change

  	add_column :users, :nome, :string
  	add_column :users, :tipo, :string
  	add_column :users, :idade, :integer

  end
end
