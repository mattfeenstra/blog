class PostsController < ApplicationController
	def new
	end

	def index
	end


	def create

		# this one just showed the key/value pair
#		render text: params[:post].inspect

		# params[:post] contains the attributes we're interested in
		# @post = Post.new(params[:post])

		# need to change for "strong_parameters" security
		@post = Post.new(post_params)
		
		# @post.save is responsible for saving the model in the database
		@post.save
		redirect_to @post

	end

	private
		def post_params
			params.require(:post).permit(:title, :text)
	end


	def show
		@post = Post.find(params[:id])
	end



end
