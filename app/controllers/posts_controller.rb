class PostsController < ApplicationController
	def new
	end

	def index
	end


	def create
		render text: params[:post].inspect

	end





end
