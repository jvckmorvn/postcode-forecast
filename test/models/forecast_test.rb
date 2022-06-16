# frozen_string_literal: true

require 'test_helper'

class ForecastTest < ActiveSupport::TestCase
  test 'format_postcode returns a correctly formatted postcode' do
    forecast = Forecast.new(postcode: 'l15fd', hot: 30, cold: 12)
    assert_equal 'L1 5FD', forecast.format_postcode
  end
end
