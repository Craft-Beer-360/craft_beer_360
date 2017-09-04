require 'yaml'

class LocationsController < ApplicationController

	def index
		@locations = YAML::load(File.open("#{Rails.root.to_s}/config/states.yml"))
		brewery_db = BreweryDB::Client.new do |config|
  		config.api_key = Rails.application.secrets.beer_db_key
		end
		@breweries = Article.all
	end
end
