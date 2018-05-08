class ArticlesController < ApplicationController
	def new
		# automatically looks for an articles/new template file
		# fallback to application/new
	end

	def create
		render plain: params[:article].inspect # pramas contains fields form the form
	end
end
