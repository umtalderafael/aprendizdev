# frozen_string_literal: true

class UsersController < ApplicationController

  skip_before_action :authorized, only: %i[index new create destroy languages choiches home edit update complete]

  def index
    @pagy, @users = pagy(User.includes(:location))
  end

  def new
    if logged_in?
      redirect_to '/'
    else
      if params.key?(:user)
        @user = User.new(params_user)
      else
        @user = User.new
      end
    end
  end

  def create
    user = User.new(params_user)
    user.save!
    session[:user_id] = user.id
    redirect_to '/locations/new'
  end

  def destroy
    user = User.find(params[:id])
    user.location.destroy
    user.destroy
    redirect_to '/users'
  end

  def edit
    @user = User.find_by_id(session[:user_id])
    @dev = @user.dev?
    @aprendiz = @user.aprendiz?
    render :profile
  end

  def update
    id = params[:id]
    @user = User.find(id)
    @dev = @user.dev?
    @aprendiz = @user.aprendiz?
    valores = params_user

    if valores['avatar']
      if @user.tem_avatar?
        @user.avatar.purge 
      end
    end

    if @user.update params_user
        flash.now[:notice] = "Usuario atualizado com sucesso!"
    else
        flash.now[:notice] = "Erro ao atualizar o usuário!"
    end 

    render :profile
  end

  def languages
    @user = User.find(session[:user_id])

    @lista_front_end = Language.front_end
    @lista_back_end = Language.back_end
    @lista_analista = Language.analista
    @lista_mobile = Language.mobile

    @pagina = params[:t]
  end

  def choiches

    @user = User.find(session[:user_id])

    escolhas = params.require(:user).permit(language_ids: [])

    linguagens_usuario = @user.languages_id_array
    linguagens_escolhidas = []

    escolhas['language_ids'].each do |e|
      unless e.empty?
        linguagens_escolhidas.push(Integer(e))
        linguagem = Language.find(e)
        @user.languages << linguagem unless @user.languages.include?(linguagem)
      end
    end

    desmarcadas = linguagens_usuario - linguagens_escolhidas

    desmarcadas.each do |d|
      apagar = @user.languages.find(d)
      @user.languages.delete(apagar)
    end

    if params[:pagina] == 'new'
      redirect_to '/users/complete'
    else
      redirect_to '/users/home'
    end

  end

  def complete
    @user = User.find(session[:user_id])
    @dev = @user.dev?
    @aprendiz = @user.aprendiz?
  end

  def home 
    @user = User.find(session[:user_id])

    if @user.aprendiz?
      @pagy, @lista_usuarios = pagy(User.lista_usuarios(@user, 'Desenvolvedor'), items: 5)
    else  
      @pagy, @lista_usuarios = pagy(User.lista_usuarios(@user, 'Aprendiz'), items: 5)
    end
    @linguagens_user = @user.languages_id_array
  end

  def busca
    @nome = params[:nome]
    @users = User.where 'nome like ?', "%#{@nome}%"
  end

  def params_user
    params.require(:user).permit(:nome, :username, :password, :tipo, :nascimento, :avatar, :descricao, :repositorio, avatar_attachment_attributes: [:id, :_destroy])
  end

end
