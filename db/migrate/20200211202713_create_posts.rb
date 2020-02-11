class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :nome
      t.string :string
      t.text :texto

      t.timestamps
    end
  end
end
