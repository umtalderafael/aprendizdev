# frozen_string_literal: true

class Language < ApplicationRecord

  belongs_to :career, optional: true
  has_and_belongs_to_many :users
  validates :nome, :career_id, presence: true

  scope :front_end, -> { joins(:career).where("careers.nome = 'Desenvolvedor Front-end'") }
  scope :back_end, -> { joins(:career).where("careers.nome = 'Desenvolvedor Back-end'") }
  scope :analista, -> { joins(:career).where("careers.nome = 'Analista de dados'") }
  scope :mobile, -> { joins(:career).where("careers.nome = 'Desenvolvedor mobile'") }

end
