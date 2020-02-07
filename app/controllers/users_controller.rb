# frozen_string_literal: true

class UsersController < ApplicationController

  skip_before_action :authorized, only: %i[index new create destroy languages choiches home edit update complete]

  def index
    @users = User.includes(:location).all
  end

  def new
    if logged_in?
      redirect_to '/'
    else
      if params.key?(:user)
        @user = User.new(params_user_new)
      else
        @user = User.new
      end
    end
  end

  def create
    user = User.new(params_user_create)
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
    if @user.update params_user_update
        flash[:notice] = "Usuario atualizado com sucesso!"
    else
        flash[:notice] = "Erro ao atualizar o usuário!"
    end 
    render :profile
  end

  def languages
    @user = User.find(session[:user_id])
    @lista_front_end = Language.front_end
    @lista_back_end = Language.back_end
    @lista_analista = Language.analista
    @lista_mobile = Language.mobile
  end

  def choiches
    escolhas = params.require(:user).permit(language_ids: [])
    user = User.find(session[:user_id])
    escolhas['language_ids'].each do |e|
      unless e.empty?
        linguagem = Language.find(e)
        user.languages << linguagem unless user.languages.include?(linguagem)
      end
    end
    redirect_to '/users/complete'
  end

  def complete
    @user = User.find(session[:user_id])
    @dev = @user.dev?
    @aprendiz = @user.aprendiz?
  end

  def home
    @user = User.find(session[:user_id])
    if @user.aprendiz?
      @lista_usuarios = User.lista_usuarios(@user, 'Desenvolvedor')
    else  
      @lista_usuarios = User.lista_usuarios(@user, 'Aprendiz')
    end
    @linguagens_user = @user.languages_name_array
  end

  def busca
    @nome = params[:nome]
    @users = User.where 'nome like ?', "%#{@nome}%"
  end

  def params_user_create
    params.require(:user).permit(:nome, :username, :password, :tipo, :idade, :avatar)
  end

  def params_user_update
    params.require(:user).permit(:nome, :username, :password, :tipo, :idade, :descricao, :repositorio)
  end

  def params_user_new
    params.require(:user).permit(:nome, :username, :tipo)
  end

end
