class SessionsController < ApplicationController

	skip_before_action :authorized, only: [:new, :create, :welcome, :destroy, :login]

  	def new
  	end

  	def create
  	   @user = User.find_by(username: params[:username])

  	   if @user && @user.authenticate(params[:password])
  	      session[:user_id] = @user.id
  	      redirect_to '/'
  	   else
          flash[:notice] = "Dados de usuario não encontrados."
  	      redirect_to "/login?username=#{params[:username]}"
  	   end
  	end

  	def login

      @user = User.new

      if logged_in?
        redirect_to '/'             
      end

  	end

  	def destroy
  		reset_session
  		redirect_to '/'
  	end

  	def welcome

      @user = User.new
  	end
  	
end
