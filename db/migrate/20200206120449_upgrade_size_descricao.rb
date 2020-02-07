class UpgradeSizeDescricao < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :descricao, :string, :limit => 500
  end
end
