class Api::ArticlesController < ApplicationController
  def index
    # @articles = HTTP.auth("Bearer [API KEY] ").get("https://content.guardianapis.com/search?tag=#{params[:search]}").parse

    # render "index.json.jb"


    def index
      @articles = HTTP.headers("X-Api-Key" =>"[API KEY]").get("https://content.guardianapis.com/search?q=#{params[:search]}").parse
      render json:  {showing: @articles }
    end

  
    
  end
end
