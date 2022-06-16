class ForecastsController < ApplicationController
  def new
    @forecast = Forecast.new
  end

  def create
    @forecast = Forecast.new(forecast_params)
    if @forecast.valid?
      @forecast.fetch_values
      @forecast.save
      redirect_to forecast_path(@forecast)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @forecast = Forecast.find(params[:id])
  end

  private

  def forecast_params
    params.require(:forecast).permit(:postcode)
  end
end
