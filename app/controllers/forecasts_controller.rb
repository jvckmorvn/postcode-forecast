# frozen_string_literal: true

class ForecastsController < ApplicationController
  def new
    @forecast = Forecast.new
  end

  def create
    @forecast = Forecast.new(forecast_params)
    if @forecast.valid?
      @forecast.fetch_values
      p @forecast
      if @forecast.country.include?('UK')
        @forecast.save
        redirect_to forecast_path(@forecast)
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @forecast = Forecast.find(params[:id])
  end

  private

  def forecast_params
    params.require(:forecast).permit(:postcode, :hot, :cold)
  end
end
