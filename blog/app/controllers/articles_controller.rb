class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
		# automatically looks for an articles/new template file
		# fallback to application/new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		# render plain: params[:article].inspect # params contains fields from the form
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new' # redirect does not pass params, render passes through @article param
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect to @article
		else
			render 'edit'
		end
	end

	def delete
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end

	def show
		@article = Article.find(params[:id])
	end

	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
