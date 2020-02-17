# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_one :location
  has_many :posts
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :classrooms
  has_one_attached :avatar
  paginates_per 10

  scope :desenvolvedores, -> { where(tipo: 'Desenvolvedor') }

  scope :aprendiz, -> { where(tipo: 'Aprendiz') }

  scope :by_location, lambda { |user|
    joins(:location).where("locations.cidade = '#{user.location.cidade}' AND locations.estado = '#{user.location.estado}' ")
  }

  scope :by_languages, lambda { | linguagens_ids|
    joins(:languages).where("languages.id in (?) ", linguagens_ids)
  }

  def aprendiz?
    tipo == 'Aprendiz'
  end

  def dev?
    tipo == 'Desenvolvedor'
  end

  def tem_linguagens?
    !languages.empty?
  end

  def tem_localizacao?
    !location.empty?
  end

  def tem_avatar?
    if avatar.attached?
      true
    else
      false
    end
  end

  def languages_id_array
    languages&.map(&:id)
  end
end
