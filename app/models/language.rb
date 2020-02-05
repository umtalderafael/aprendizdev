class Language < ApplicationRecord

    belongs_to :career

    validates :nome, :career_id, presence: true
     
end
