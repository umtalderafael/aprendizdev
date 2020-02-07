class AddNascimentoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nascimento, :timestamp
  end
end
