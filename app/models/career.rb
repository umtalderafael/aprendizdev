# frozen_string_literal: true

class Career < ApplicationRecord
  has_many :languages
  validates :nome, presence: true
end