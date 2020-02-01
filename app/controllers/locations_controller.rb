class LocationsController < ApplicationController

	skip_before_action :authorized, only: [:new, :create]

  	def new

  		@location = Location.new 
  		
  	end 

	def create
	   valores = params.require(:location).permit(:cep, :cidade, :estado)
	   valores['user_id'] = session[:user_id] 
	   @location = Location.create(valores) 	   
	   redirect_to '/'
	end

end
