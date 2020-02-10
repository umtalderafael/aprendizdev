# frozen_string_literal: true

class Location < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  validates :cep, :cidade, :estado, presence: true
end