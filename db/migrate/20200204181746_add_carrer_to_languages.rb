class AddCarrerToLanguages < ActiveRecord::Migration[5.2]
  def change
    add_reference :careers, :language, index: true
  end
end
