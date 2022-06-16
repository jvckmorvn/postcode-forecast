# frozen_string_literal: true

class AddCountryToForecasts < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :country, :string
  end
end
