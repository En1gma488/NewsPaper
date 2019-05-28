class ArticlesController < ApplicationController
	def index
		@articles = Article.all
		ParserNewsJob.perform_now
	end

	def show
		@article = Article.find(params[:id])
	end

  	def fatch_import
  		ParserService.new.render_article
  		redirect_to articles_path
  		flash[:success] = "You have updated"
  	end

  	def source_import
  		ParserService.new.render_source
  		redirect_to articles_path
  	end

  	def button_press
  		ParserNewsJob.perform_now
  	end	
end