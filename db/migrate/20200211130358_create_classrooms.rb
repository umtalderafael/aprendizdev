class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      
      t.boolean :ativa, default: false

      t.timestamps
    end
  end
end
