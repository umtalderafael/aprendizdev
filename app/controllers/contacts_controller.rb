class ContactsController < ApplicationController

	skip_before_action :authorized, only: [:index, :create]

	def index
		@contact = Contact.new
	end	

	def create
		@contact = Contact.create(params.require(:contact).permit(:nome, :email, :mensagem)) 
		flash[:notice] = "Mensagem enviada com sucesso!"
		redirect_to '/contacts'	   	 
	end

end
