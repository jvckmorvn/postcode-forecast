require 'open-uri'

class ForecastsController < ApplicationController
  def new
    @forecast = Forecast.new
  end

  def create
    @forecast = Forecast.new(forecast_params)
    if @forecast.save
      api_key = ENV['WEATHER_API_KEY']
      postcode = params[:forecast][:postcode]
      url = "https://api.weatherapi.com/v1/forecast.json?key=#{api_key}&q=#{postcode}"
      uri = URI.open(url).read
      @response = JSON.parse(uri)
      raise
      redirect_to forecast_path(@forecast)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @city = @response['location']['city']
    @max_temp = @response['forecast']['forecastday'][0]['day']['maxtemp_c']
    @min_temp = @response['forecast']['forecastday'][0]['day']['mintemp_c']
  end

  private

  def forecast_params
    params.require(:forecast).permit(:postcode)
  end
end
