# frozen_string_literal: true

class ProfileController < ApplicationController
  skip_before_action :authorized, only: [:index, :update]

  def index
    @user = User.find_by_id(session[:user_id])
    @dev = @user.dev?
    @aprendiz = @user.aprendiz?
  end

  def update
    user = User.find_by_id(session[:user_id])
    if user.update params.require(:user).permit(:descricao, :repositorio)
      redirect_to '/users/home'
    end
  end
end
