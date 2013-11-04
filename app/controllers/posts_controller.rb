class PostsController < ApplicationController
	def new
	end

	def index
	end


	def create

		# this one just showed the key/value pair
#		render text: params[:post].inspect

		# params[:post] contains the attributes we're interested in
		@post = Post.new(params[:post])
		
		# @post.save is responsible for saving the model in the database
		@post.save
		redirect_to @post

	end





end
