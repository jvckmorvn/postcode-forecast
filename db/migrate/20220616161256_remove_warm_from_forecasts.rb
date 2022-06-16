# frozen_string_literal: true

class RemoveWarmFromForecasts < ActiveRecord::Migration[7.0]
  def change
    remove_column :forecasts, :warm, :integer
  end
end
