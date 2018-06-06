class Api::PagesController < ApplicationController
  def index
    response = Unirest.get("https://newsapi.org/v2/everything?q=bitcoin&sortBy=publishedAt&apiKey=#{ ENV['NEWS_API_KEY'] }")
    @info = response.body
    render 'index.json.jbuilder'
  end
end
