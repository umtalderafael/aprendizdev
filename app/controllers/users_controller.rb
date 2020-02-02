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
		
		if params.has_key?(:user)
			valores = params.require(:user).permit(:nome, :username, :tipo)		
			@user['nome'] = valores['nome'] 
			@user['username'] = valores['username'] 
			@user['tipo'] = valores['tipo'] 
		end

	  end
	end

  	def create
	 	@user = User.create(params.require(:user).permit(:nome, :username, :password, :tipo, :idade)) 
	 	session[:user_id] = @user.id
	 	redirect_to '/locations/new'	   	 
  	end

    def destroy   	
    	user = User.find(params[:id])
  		user.location.destroy
    	user.destroy 
    	redirect_to '/users'	    	
    end

    def busca
        @nome = params[:nome]
        @users = User.where "nome like ?", "%#{@nome}%"
    end

end
