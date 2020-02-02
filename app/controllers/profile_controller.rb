class ProfileController < ApplicationController

	skip_before_action :authorized, only: [:index]

	def index
		@user = User.find_by_id(session[:user_id])

		if @user.tipo == "Desenvolvedor"
			@dev = true
			@aprendiz = false
		else
			@dev = false
			@aprendiz = true
		end

		@location = Location.new
		@location.cep = @user.location.cep
		@location.cidade = @user.location.cidade
		@location.estado = @user.location.estado

	end	

end
