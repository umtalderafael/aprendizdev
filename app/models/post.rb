class Post < ApplicationRecord
  has_one :users
  has_and_belongs_to_many :classrooms
end
