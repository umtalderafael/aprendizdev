# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_one :location
  has_many :posts
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :classrooms
  has_one_attached :avatar
  paginates_per 10

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

  def tem_avatar?
    if avatar.attached?
      return true
    else
      return false
    end
  end

  def languages_id_array
    languages&.map(&:id)
  end

end
