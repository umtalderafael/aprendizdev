# frozen_string_literal: true

module UsersHelper

  def descricao(user)
    return 'Escolha as tecnologias que tem interesse em aprender' if user.aprendiz?
    'Marque as tecnologias que você conhece e acredita que pode ensinar'
  end

  def avatar(user)
    return Rails.application.routes.url_helpers.rails_blob_path(user.avatar, only_path: true) if user.avatar.attached?
    'https://library.kissclipart.com/20181001/wbw/kissclipart-gsmnet-ro-clipart-computer-icons-user-avatar-4898c5072537d6e2.png' 
  end

  def msg_resultado(user)
    if user.tipo == 'Aprendiz'
      tipo = 'Veja abaixo os desenvolvedores '
    else
      tipo = 'Veja abaixo os aprendizes '
    end
    "#{tipo} encontrados em #{@user.location.cidade} - #{@user.location.estado}"
  end


  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

  
end