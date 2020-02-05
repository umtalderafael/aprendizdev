class AddCareerToLanguages < ActiveRecord::Migration[5.2]
  def change
    add_reference :languages, :career, index: true, foreign_key: true
  end
end
