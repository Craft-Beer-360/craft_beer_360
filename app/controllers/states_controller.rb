class StatesController < ApplicationController

	def index
		@breweries = Article.all
	end

	def show
		@article =  Article.where(text: 'Anchorage')
	end

end
