class ArticlesController < ApplicationController
	def new
		# automatically looks for an articles/new template file
		# fallback to application/new
	end

	def create
		# render plain: params[:article].inspect # params contains fields from the form
		@article = Article.new(article_params)
		@article.save
		redirect_to @article
	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
