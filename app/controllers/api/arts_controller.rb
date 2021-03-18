class Api::ArtsController < ApplicationController
  def index
    response = HTTP.get ("https://api.harvardartmuseums.org/painting?apikey=f342008b-d84a-4470-875f-d63828634ff1")
    render json: response.parse
  end
end
