class AddRepositorioToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :repositorio, :string
  end
end
