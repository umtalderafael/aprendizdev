class RemoveCareerToLanguage < ActiveRecord::Migration[5.2]
  def change
    remove_reference :careers, :language, index: true
  end
end
