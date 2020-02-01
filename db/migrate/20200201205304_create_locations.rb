class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|

    	t.string :cep
    	t.string :cidade
    	t.string :estado
    	t.integer :user_id

      t.timestamps
    end
  end
end
