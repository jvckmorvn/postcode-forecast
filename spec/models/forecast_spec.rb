# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Forecast, type: :model do
  it 'returns a correctly formatted postcode' do
    forecast = Forecast.new(postcode: 'l15fd', hot: 30, cold: 12)
    expect(forecast.format_postcode).to eq 'L1 5FD'
  end

  it 'returns the correct temperature result for some given inputs' do
    forecast = Forecast.new(postcode: 'l15fd', hot: 100, cold: -100).fetch_values
    expect(forecast).to eq 'warm'
  end
end
