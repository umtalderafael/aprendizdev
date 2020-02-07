# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_one :location
  has_and_belongs_to_many :languages
  has_one_attached :avatar

  scope :lista_usuarios, -> (user, tipo) { joins(:location).where("locations.cidade = '#{user.location.cidade}' AND locations.estado = '#{user.location.estado}' AND users.tipo = '#{tipo}' ") }

  def aprendiz?
    tipo == 'Aprendiz'
  end

  def dev?
    tipo == 'Desenvolvedor'
  end

  def tem_linguagens?
    languages.size > 0
  end

  def tem_localizacao?
    location.size > 0
  end

  def languages_name_array
    languages&.map(&:nome)
  end
end
