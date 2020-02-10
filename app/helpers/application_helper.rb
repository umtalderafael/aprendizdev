module ApplicationHelper

  def login_ativo(rota)
    'active' if rota == '/login'  
  end

  def cadastrar_ativo(rota)
    'active' if rota == '/users/new'  
  end
end
