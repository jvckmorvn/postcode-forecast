# frozen_string_literal: true

require 'open-uri'

class Forecast < ApplicationRecord
  validates :postcode, presence: { message: "Postcode can't be blank." }
  validates :postcode,
            format: { with: /[A-Z]{1,2}[0-9][0-9A-Z]?\s?[0-9][A-Z]{2}/i, message: 'Please enter a valid UK postcode.' }
  validates :hot, presence: { message: "Heat threshold can't be blank." }
  validates :cold, presence: { message: "Cold threshold can't be blank." }

  def fetch_values
    api_key = ENV['WEATHER_API_KEY']
    slug = postcode.split.join('-')
    url = "https://api.weatherapi.com/v1/forecast.json?key=#{api_key}&q=#{slug}"
    uri = URI.parse(url).open.read
    response = JSON.parse(uri)
    self.city = response['location']['name']
    self.country = response['location']['country']
    self.max_temp = response['forecast']['forecastday'][0]['day']['maxtemp_c'].to_f
    self.min_temp = response['forecast']['forecastday'][0]['day']['mintemp_c'].to_f
    self.temp = set_threshold(max_temp, hot, cold)
  end

  def format_postcode
    case postcode.length
    when 8
      "#{postcode.first(4).upcase} #{postcode.last(3).upcase}"
    when 7
      "#{postcode.first(4).upcase} #{postcode.last(3).upcase}"
    when 6
      "#{postcode.first(3).upcase} #{postcode.last(3).upcase}"
    when 5
      "#{postcode.first(2).upcase} #{postcode.last(3).upcase}"
    end
  end

  private

  def set_threshold(max_temp, hot, cold)
    if max_temp.to_i >= hot
      'hot'
    elsif max_temp.to_i <= cold
      'cold'
    else
      'warm'
    end
  end
end
