class PostsController < ApplicationController

	skip_before_action :authorized, only: [:index, :new, :create, :show, :destroy]

	def new
		@post = Post.new
		@classroom_id = params['post']['classroom_id']
		@user_id = params['post']['user_id']		
	end

	def create 
		classroom_id = params['classroom_id']		
		classroom = Classroom.find(classroom_id)
	    post = Post.new(post_params)

		if post.save!
			classroom.posts << post unless classroom.posts.include?(post)			
		end

		redirect_to "/classrooms/#{classroom_id}"
	end

	def show
		@post = Post.find(params[:id])		
	end

	def destroy
		@post = Post.find(params[:id])

		if @post.anexos.attached?
			@post.anexos.purge
		end	

	    @post.destroy
	    respond_to do |format|
	      format.html { redirect_to posts_url, notice: 'Post removido com sucesso.' }
	      format.json { head :no_content }
	      format.js   
	    end
	end

  	private

    def post_params
      params.require(:post).permit(:nome, :texto, :user_id,  anexos: [])
    end
end