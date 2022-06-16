# frozen_string_literal: true

require 'application_system_test_case'

class ForecastsTest < ApplicationSystemTestCase
  test 'visiting the home page' do
    visit root_url
    assert_selector 'h1', text: 'Postcode Forecast'
  end

  test 'displaying correct location on the show page' do
    visit root_url
    fill_in 'forecast_postcode', with: 'l15fd'
    fill_in 'forecast_hot', with: 30
    fill_in 'forecast_cold', with: 12
    click_on 'Search'
    assert_text 'Liverpool'
  end

  test 'displaying correct temperature on the show page' do
    visit root_url
    fill_in 'forecast_postcode', with: 'l15fd'
    fill_in 'forecast_hot', with: 100
    fill_in 'forecast_cold', with: -100
    click_on 'Search'
    assert_text 'warm'
  end
end
