class AddNomeToClassroom < ActiveRecord::Migration[5.2]
  def change
    add_column :classrooms, :nome, :string
  end
end
