# frozen_string_literal: true

class ProfileController < ApplicationController
  skip_before_action :authorized, only: [:index, :update]

  def index
    @user = User.find_by_id(session[:user_id])
    if @user.tipo == 'Desenvolvedor'
      @dev = true
      @aprendiz = false
    else
      @dev = false
      @aprendiz = true
    end
  end

  def update
    user = User.find_by_id(session[:user_id])
    if user.update params.require(:user).permit(:descricao, :repositorio)
      redirect_to '/users/home'
    else
      
    end

  end

end
