# frozen_string_literal: true

class AddTempToForecasts < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :temp, :string
  end
end
