class Api::ArtsController < ApplicationController
  # require "http"

  def index
    response = HTTP.get ("https://api.harvardartmuseums.org/person?apikey=#{Rails.application.credentials.arts_api[:api_key]}")
    render json: response.parse
  end
end
