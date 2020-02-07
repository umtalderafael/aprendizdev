# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :authorized, only: %i[new create welcome destroy login]

  def new; end

  def create
    @user = User.find_by(username: params[:username])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      if !@user.location.nil?
        session[:location_id] = @user.location.id
        if @user.tem_linguagens?
          redirect_to '/users/home'
        else
          redirect_to '/users/languages'
        end
      else
        redirect_to '/locations/new'
      end
    else
      flash[:notice] = 'Dados de usuario não encontrados.'
      redirect_to "/login?username=#{params[:username]}"
    end
  end

  def login
    @user = User.new
    redirect_to '/' if logged_in?
  end

  def destroy
    reset_session
    redirect_to '/'
  end

  def welcome
    @user = User.new
  end
end
