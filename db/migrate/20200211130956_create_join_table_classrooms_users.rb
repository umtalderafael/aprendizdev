class CreateJoinTableClassroomsUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :classrooms, :users do |t|
      t.index [:classroom_id, :user_id]
    end    
  end
end
