class UsersController < ApplicationController

  	skip_before_action :authorized, only: [:index, :new, :create, :destroy]

  	def index
  		@users = User.includes(:location).all
  	end

	def new
	  if logged_in?
		redirect_to '/'       
	  else
		@user = User.new
	  end
	end

  	def create
	 	@user = User.create(params.require(:user).permit(:nome, :username, :password, :tipo, :idade)) 
	 	session[:user_id] = @user.id
	 	redirect_to '/locations/new'	   	 
  	end
end
