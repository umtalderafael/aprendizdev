class UpdateNascimentoType < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :nascimento, :date
  end
end
