# frozen_string_literal: true

class AddColumnsToForecasts < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :city, :string
    add_column :forecasts, :min_temp, :float
    add_column :forecasts, :max_temp, :float
  end
end
