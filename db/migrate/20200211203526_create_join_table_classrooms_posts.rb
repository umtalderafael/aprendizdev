class CreateJoinTableClassroomsPosts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :classrooms, :posts do |t|
      t.index [:classroom_id, :post_id]
    end    
  end
end
