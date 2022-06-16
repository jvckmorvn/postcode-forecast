class AddHeatToForecasts < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :hot, :integer
    add_column :forecasts, :warm, :integer
    add_column :forecasts, :cold, :integer
  end
end
